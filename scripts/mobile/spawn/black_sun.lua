black_sun = {
	wanderRadius = 10,
	commandLevel = 0,

	type = LAIR,
	maxSpawnLimit = 1024,

	lairSpawns = {
		{
			lairTemplateName = "yavin4_black_sun",
			spawnLimit = 0,
			minDifficulty = 40,
			maxDifficulty = 60,
			numberToSpawn = 5,
			weighting = 15,
			size = 15
		}
	}
}

addLairGroup("black_sun", black_sun);
