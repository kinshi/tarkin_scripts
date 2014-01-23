#!/bin/bash

until ./core3; do
    echo "Server 'core3' crashed with exit code $?.  Restarting.." >&2
    sleep 60
done
