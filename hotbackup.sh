#!/bin/sh
#
# backup helper script for SWGemu Berkeley DB files
# 
# V 0.1 2011-02 (c)UT aka lei
# (r) GNU LGPL V2.0 
# 
# uses: awk, cat, df, du, fgrep, grep, gzip, head, sed  ; db_hotbackup from bdb utils 
#       and mysqldump
# 
# In the given backup dir hotbackup will use db_hotbackup to create backup bdb files
# from dbhome to backupdir/[1,2...n]. After that it will dump the mysql part and zip
# it. The subdirs are cycled per call to have several backups at hand if an problem
# isnt detected instantly. Subdir 0 is reserved for creating a db snapshot. It will
# be overwritten each time called. 
# On start, the hotbackup utility estimates space and time needs for a backup and
# gives a report after each run. 
# 
# 
# -t  		test mode, do nothing	(default: run sharp)
# -v  		be more verbose		(default: run silent)
# -l            log to default logfile  (default: no log, $DB_BACKUP/hotbackup.log)
# -0  		do backup to DB_BACKUP/0 (snapshot)

# known bugs (aka "features")
#
# 0.1 - unresolved error when using illegal arguments
# 0.1 - if a backup needs more than a day, we put ourself on hold. Must reset manually.
# ...
# (to be continued)

#
# release history
# 0.1 - 2011-02-06 (c)UT aka lei
# 

#
# please edit these settings according to your needs
#

# add db utils dir to path
PATH=$PATH:/usr/local/BerkeleyDB.5.0/bin
export PATH

# databases directory , used by bdb utils too
DB_HOME=/home/swgemu/workspace/tarkin_scripts/databases 
export DB_HOME

# backup dir (should be on another filesystem)
DB_BACKUP=/home/swgemu/workspace/tarkin_scripts/backup
export DB_BACKUP

# how much backups will we keep
DB_CYCLE=5
export DB_CYCLE

# how much space must be left on backup volume
BACKUP_VOLUME_MINFREE_GB=4
export BACKUP_VOLUME_MINFREE_GB

# mysqldump with user and pw 
#MYSQLDUMP="/usr/bin/mysqldump -u swgdump -p bla "
MYSQLDUMP="/usr/bin/mysqldump --user=swgemu --password=123456 "
export MYSQLDUMP

#
# nothing much should need a change from here
#
# config file
CONFIG=$DB_BACKUP/config
export CONFIG

LOGFILE=$DB_BACKUP/hotbackup.log
export LOGFILE
#
# echo needs -e or not, depends on shell version
#
ECHO=`echo -e`
if [ "$ECHO" = "-e" ] ; then ECHO="echo" ; else ECHO="echo -e " ; fi
export ECHO


#
# do not edit below
#

log () {
if [ "$LOG" = "1" ] ; then 
		if [ "$LOGFILE" != "" ] && [ ! -d $LOGFILE ]; then
				HEAD=`head -1 $LOGFILE 2>/dev/null`
				if [ -f $LOGFILE ] ; then 
					if [ "$HEAD" =  "# hotbackup LOGFILE" ]
						then echo "`date "+%Y.%m.%d-%H:%M:%S"` $*" >> $LOGFILE
						     return 0
						else return 1
				        fi
					else echo "# hotbackup LOGFILE" > $LOGFILE 
				      	echo "`date "+%Y.%m.%d-%H:%M:%S"` $*" >> $LOGFILE
				   	return 0
				fi
		 else return 1
		 fi
fi
return 0
}
# must use as -f -c 
info () {
CONT=""
if [ "$1" = "-f" ] ; then VERBOSE=1 ; shift ; fi
if [ "$1" = "-c" ] ; then CONT=1 ; shift ; fi
if [ "$VERBOSE" = "1" ] ; then 
		if [ "$CONT" = "1" ];  then $ECHO "$*" 
			               else $ECHO "`date` hotbackup: $*"
		fi
fi
if [ "$LOG" = "1" ] ; then 
		if [ "$CONT" = "1" ];  then log "$*" 
			               else log "`date` hotbackup: $*" 
		fi
fi

}
# get disk usage as MB
disk_size() {
if [ -d $1 ] ; then
	echo `du -B 1048576 -s $1|awk '{print $1}'|sed -e "s/\ //g"` ; return 0 ;
	else echo "0" ; return 1 ;
fi
}
# get free disk space as MB
free_space () {
if [ -d $1 ]  ; then
	echo `df -B 1048576 --total $1|fgrep total|awk '{print $4}'|sed -e "s/\ //g"` 
	else echo "0" ; return 1 ;
fi
}
db_disk_size () {
disk_size $DB_HOME
return 0
}
backup_free_space () {
free_space $DB_BACKUP 
return 0
}

# check for config file, create it if not exists
check_config () {
if [ ! -d $DB_HOME ]   ; then echo "$0: `date`: ERROR - $DB_HOME must exist" ; exit  ; fi
if [ ! -d $DB_BACKUP ] ; then echo "$0: `date`: ERROR - $DB_BACKUP must exist" ; exit  ; fi
if [ -f $CONFIG ] ; 	then  HEAD=`head -1 $CONFIG 2>/dev/null`
			if echo "$HEAD"|fgrep "# BDB HOTBACKUP UTIL CONFIG" >/dev/null 2>&1 ; then return 0 ; fi
			return 1
   			else
			if [ -d $CONFIG ] ; then return 1 ; fi
			echo "# BDB HOTBACKUP UTIL CONFIG created `date` by `whoami`" > $CONFIG
			echo "# " >> $CONFIG
			echo "LASTRUNDATE=`date "+%Y-%m-%d_%H:%M"`" 	>> $CONFIG
			echo "LASTRUNTIME=00:00" 	   		>> $CONFIG
			echo "CYCLE=0"	 				>> $CONFIG
			echo "SNAPSHOT=0000-00-00_00:00" 		>> $CONFIG
			echo "DUDBHOME=`db_disk_size`"	 		>> $CONFIG
			echo "DFDBHOME=`free_space $DB_HOME`"		>> $CONFIG
			echo "DFBACKUP=`backup_free_space`" 		>> $CONFIG
			echo "DUBACKUP=0" 				>> $CONFIG
			echo "BUACTIVE=none" 				>> $CONFIG
			echo "HOLD=0"	 				>> $CONFIG

fi
return 0
}

#
# update_config_item ITEMNAME ITEMVALUE
# use with care
#
update_config_item () {
I=`echo "$1"|sed -e "s/\ //g"`
N=`echo $I|fgrep -c "="`
if [ "$N" = "1" ] ; then C=`echo "$I"|awk -F\= '{print $2}'|sed -e "s/\ /_/g"`
		    else C=`echo "$2"|sed -e "s/\ /_/g"`
fi
if [ "$I" = "" ] || [ "$C" = "" ] ; then return 1 ; fi
X=0
#do a simple locking
while [ -f $CONFIG.lock ] ; do $ECHO ".\c" ; sleep 1 ; X=`expr $X + 1`; if [ $X -gt 30 ] ; then PID=`cat $CONFIG.lock` ; PS=`ps hp $PID` ; if [ "$PS" = "$PID" ] ; then  $ECHO "\n$0: `date`: ERROR ... another backup seems to be active" ; exit ; else $ECHO "\n$0: `date`: warning - dead lock $PID - override lock." ;  rm -f $CONFIG.lock ; fi ; fi ; done
echo $$ > $CONFIG.lock
O=`grep "^$I" $CONFIG`
N=`echo "${I}=${C}"`
mv $CONFIG $CONFIG.bak
if sed -e "s/$O/$N/" < $CONFIG.bak > $CONFIG ; then
	rm -f $CONFIG.lock
	else info -f "update_config_item: ERROR replacing $O with $N."
	rm -f $CONFIG.lock
	return 1
fi
return 0
}

#
# get_config_item ITEMNAME
#
get_config_item () {
Q=`echo "$1"|sed -e "s/\ //g"`
R=`grep "^$Q=" $CONFIG |awk -F\= '{print $2}'|sed -e "s/\ //g"`
if [ "$R" != "" ] ; then echo $R ; return 0; fi
return 1
}

#
# main 
#
# 
ARGS="$*"
while [ "$1" != "" ] ; do
	if [ "$1" = "-v" ] ; then VERBOSE=1 ; export VERBOSE;  fi
	if [ "$1" = "-t" ] ; then TESTING=1 ; export TESTING;  fi
	if [ "$1" = "-0" ] ; then SNAPSHOT=1 ;  fi
	if [ "$1" = "-l" ] ; then LOG=1 ; export LOG ;  fi
	if [ "$1" = "-?" ] ; then echo "$0 usage: -v verobse, -0 snapshot, -t test only, -l write logfile, -? this help" ; exit ; fi
	shift;
done

if [ "$LOG" = "1" ] ; then
	if log $0 $ARGS ; then info "Logging to $LOGFILE"
   		else info "LOGFILE $LOGFILE wrong file or directory, LOG SUSPENDED"
		     LOG=0 ; export LOG
	fi
	else info "log turned off."
fi

if check_config ; then info "Config file checked OK"
	else info "there is a problem with the config file, please check settings."
	     info "Config file is $CONFIG, maybe belongs to something else"
	     exit
fi
HOLD=`get_config_item HOLD`
if [ "$HOLD" = "1" ] ; then info -f "BACKUP PROCESS PUT ON HOLD ... cannot continue. Check log and config file!";exit;fi

update_config_item BUACTIVE $$

DF=`backup_free_space` ; DU=`db_disk_size` ; FM=`expr $DF - $DU` ; FG=`expr $FM / 1024`

# load config
CYCLE=`get_config_item CYCLE` ; NEXTCYCLE=`expr $CYCLE + 1`
if [ $NEXTCYCLE -gt $DB_CYCLE ] ; then NEXTCYCLE=1 ; fi 
LASTRUNDATE=`get_config_item LASTRUNDATE`
LASTRUNTIME=`get_config_item LASTRUNTIME`
LASTSNAPSHOT=`get_config_item SNAPSHOT`
DUDBHOME=`get_config_item DUDBHOME`  
DFBACKUP=`get_config_item DFBACKUP` 
DUBACKUP=`get_config_item DUBACKUP` 
BACKUP_VOLUME_MINFREE_MB=`expr $BACKUP_VOLUME_MINFREE_GB \* 1024`
LRD=`echo $LASTRUNDATE|awk -F\_ '{print $1}'`
LRT=`echo $LASTRUNDATE|awk -F\_ '{print $2}'`
if [ "$TESTING" = "1" ] ; then info "INVOKED WITH -t SO DOING TEST RUN ONLY" ; fi
info "Using DB_HOME $DB_HOME and DB_BACKUP $DB_BACKUP"
info "Last run was on $LRD at $LRT saving $DUBACKUP MB to DB_BACKUP/$CYCLE using $LASTRUNTIME hrs:mins"
info "This run will use estimated $DU MB on $DB_BACKUP where $DF MB are available. ($BACKUP_VOLUME_MINFREE_MB MB reserved)"

if [ $FM -lt $BACKUP_VOLUME_MINFREE_MB ] ; then 
		 info -f "There happens to be a problem: Only $DF MB left on volume. STOP PROCESSING." 
		 exit 
		 else info "We got $FG GB ($FM MB), so clearance for a backup is given." 
fi

if [ "$SNAPSHOT" = "1" ] ; then info "A SNAPSHOT has been requested, so backup destination is $DB_BACKUP/0".
			   NEXTCYCLE=0
			   LASTRUNDATE=`get_config_item SNAPSHOT`
			   info "Last SNAPSHOT was done $LASTRUNDATE."
			   else info "Normal backup requested, destination is DB_BACKUP/$NEXTCYCLE."
fi
STARTD=`date +%Y%m%d`
STARTH=`date +%H`
STARTM=`date +%M`
# db_hotbackup will create or clean the target dir by itself
info "Starting the hotbackup process by now..."
RUN="db_hotbackup -d $DB_HOME -b $DB_BACKUP/$NEXTCYCLE -v > $DB_BACKUP/db_hotbackup.out "
if [ "$TESTING" != "1" ] ;  then
	if db_hotbackup -d $DB_HOME -b $DB_BACKUP/$NEXTCYCLE -v > $DB_BACKUP/db_hotbackup.out 2>&1 ; then
		info "db_hotbackup done. See output in $DB_BACKUP/db_hotbackup.out."
		info "Starting mysql dump now...\c"
		$MYSQLDUMP --extended-insert=FALSE --complete-insert=TRUE swgemu > $DB_BACKUP/$NEXTCYCLE/swgemu.sql
		info -c "done."
		gzip $DB_BACKUP/$NEXTCYCLE/swgemu.sql
		info "Compressed dump to $DB_BACKUP/$NEXTCYCLE/swgemu.sql.gz"
		else
		info "db_hotbackp statet an error: See output in $DB_BACKUP/db_hotbackup.out."
	fi
	else
	info "TESTING MODE ... would run now: $RUN"
	info "TESTING MODE ... would run now: $MYSQLDUMP"
fi
STOPD=`date +%Y%m%d`
STOPH=`date +%H`
STOPM=`date +%M`
D=`expr $STOPD - $STARTD`
H=`expr $STOPH - $STARTH`
M=`expr $STOPM - $STARTM`
BT=`echo "$H:$M"`
if [ $D -gt 0 ] ; then 	info -f "Backup needed more than a day - something seems to be wrong!"
			info -f "Putting backup on hold. Operator action requested."
			update_config_item HOLD 1
fi
update_config_item LASTRUNTIME $BT
if [ "$NEXTCYCLE" = "0" ] ; then update_config_item SNAPSHOT `date "+%Y-%m-%d_%H:%M"` 
	else update_config_item LASTRUNDATE `date "+%Y-%m-%d_%H:%M"` 
	update_config_item CYCLE $NEXTCYCLE
fi
info "Updating config file ...\c"
DUDBHOME=`get_config_item DUDBHOME`  
DFBACKUP=`get_config_item DFBACKUP` 
DUBACKUP=`get_config_item DUBACKUP` 
DF=`backup_free_space` ; update_config_item DFBACKUP $DF;
DU=`db_disk_size` ; update_config_item DUDBHOME $DU;
DB=`disk_size $DB_BACKUP/$NEXTCYCLE` ; update_config_item DUBACKUP $DB
info -c "done."
info "BACKUP DONE. Backed up $DB MB to $DB_BACKUP/$NEXTCYCLE using $BT hrs:mins. $DF MB left on backup volume ($BACKUP_VOLUME_MINFREE_MB reserved)"
update_config_item BUACTIVE none

#
# finis
#
