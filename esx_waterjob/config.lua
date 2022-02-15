Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'
Config.platePrefix                = "WET"

Config.Zones = {

	EauFarm = {
		Pos   = {x = 1929.023, y = 592.400, z = 174.658},
		Size  = {x = 3.5, y = 3.5, z = 2.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Récolte de l'eau 1",
		Type  = 1
	},


	TraitementEau = {
		Pos   = {x = 2461.959, y = 1575.619, z = 32.11},
		Size  = {x = 3.5, y = 3.5, z = 2.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Traitement de l'eau 2",
		Type  = 1
	},

	TraitementBouteille = {
		Pos   = {x = 1048.881, y = -1816.547, z = 36.30},
		Size  = {x = 4.0, y = 4.0, z = 1.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Transformation en bouteille 3",
		Type  = 1
	},
	
	SellFarm = {
		Pos   = {x = 913.770, y = -1273.284, z = 26.09},
		Size  = {x = 3.5, y = 3.5, z = 2.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Vente des bouteilles d'eau ",
		Type  = 1
	},

	WaterActions = {
		Pos   = {x = 765.05, y = -1358.63, z = 26.5},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Point d'action",
		Type  = 0
	 },

	 --Cloakrooms = {
		--Pos   = {x = -1711.771240, y = -1130.0577, z = 12.175},
		--Pos   = {x = 758.2, y = -1332.42, z = 27.28},
		--Size  = {x = 1.5, y = 1.5, z = 0.4},
		--Color = {r = 102, g = 102, b = 204},
	--	Type  = 27
--	},
	  
	VehicleSpawner = {
		Pos   = {x = 752.08, y = -1356.42, z = 26.0},
		Size = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Garage véhicule",
		Type  = 0
	},

	VehicleSpawnPoint = {
		Pos   = {x = 762.51, y = -1351.27, z = 26.34},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Spawn point",
		Type  = -1
	},

	VehicleDeleter = {
		Pos   = {x = 746.11, y = -1356.72, z = 26.0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 136, g = 243, b = 216},
		Name  = "Ranger son véhicule",
		Type  = 0
	}

}