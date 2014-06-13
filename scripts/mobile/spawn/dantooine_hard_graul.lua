dantooine_hard_graul = {
	wanderRadius = 10,
	commandLevel = 0,

	type = LAIR,
	maxSpawnLimit = 32,

	lairSpawns = {
		{
			lairTemplateName = "dantooine_graul_ancient_lair_neutral_large",
			spawnLimit = -1,
			minDifficulty = 50,
			maxDifficulty = 50,
			numberToSpawn = 5,
			weighting = 15,
			size = 30
		},
		{
			lairTemplateName = "dantooine_graul_frenzied_lair_neutral_large",
			spawnLimit = -1,
			minDifficulty = 56,
			maxDifficulty = 56,
			numberToSpawn = 5,
			weighting = 10,
			size = 30
		}
	}
}

addLairGroup("dantooine_hard_graul", dantooine_hard_graul);
