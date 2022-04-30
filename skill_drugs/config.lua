Config = {}


Config.PoliceDatabaseName = "lspd"	
Config.PoliceNotfiyEnabled = true		
Config.PoliceBlipShow = true			
Config.PoliceBlipTime = 30				
Config.PoliceBlipRadius = 50.0			
Config.PoliceBlipAlpha = 250			
Config.PoliceBlipColor = 5				


Config.CooldownTime = 1				
Config.HackerDevice = "hackerDevice"	
Config.HackingBlocks = 5				
Config.HackingTime = 30					
Config.JobVan = 'rumpo2'					


Config.ListOfDrugs = {
	{ drug = 'coke', label = 'Coke', Enabled = true, BuyPrice = 7500, MinReward = 1, MaxReward = 3 },
	{ drug = 'meth', label = 'Meth', Enabled = true, BuyPrice = 6000, MinReward = 2, MaxReward = 6 },
}


Config.Jobs = {
    { 
		Spot = vector3(1001.35,-1532.68,29.77),
		Heading = 277.54,
		LockpickPos = vector3(1001.35,-1532.68,29.77),
		LockpickHeading = 277.54,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = 1001.58, y = -1541.83, z = 29.5, h = 82.57, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = 992.29, y = -1550.61, z = 29.75, h = 318.88, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', },
			NPC3 = { x = 978.1, y = -1541.29, z = 30.48, h = 35.59, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' },
			NPC4 = { x = 977.84, y = -1528.17, z = 30.94, h = 68.01, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC5 = { x = 997.43, y = -1530.0, z = 30.84, h = 100.92, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', }
		}
	},
	{ 
		Spot = vector3(1001.35,-1532.68,29.77),
		Heading = 277.54,
		LockpickPos = vector3(1001.35,-1532.68,29.77),
		LockpickHeading = 277.54,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = 1001.58, y = -1541.83, z = 29.5, h = 82.57, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = 992.29, y = -1550.61, z = 29.75, h = 318.88, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_MICROSMG', },
			NPC3 = { x = 978.1, y = -1541.29, z = 30.48, h = 35.59, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' },
			NPC4 = { x = 977.84, y = -1528.17, z = 30.94, h = 68.01, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', }
		}
	},
}


Config.DeliverySpot = {
	vector3(1732.15,3314.56,40.50),
}

Config.DeliveryDrawDistance  = 50.0
Config.DeliveryMarkerType  = 27
Config.DeliveryMarkerScale  = { x = 5.0, y = 5.0, z = 1.0 }
Config.DeliveryMarkerColor  = { r = 240, g = 52, b = 52, a = 100 }


Config.maxCap = 150								
Config.DrugSaleCooldown = 5						
Config.SellDrugsBarText = "Vends de la drogue"		
Config.SellDrugsTime = 3						
Config.Enable3DTextToSell = true				
Config.ReceiveDirtyCash = true					
Config.CokeDrug = "coke1g"						 				
Config.MethDrug = "meth1g"						 
Config.WeedDrug = "weed4g"						
Config.CallPoliceChance = 2						


Config.CokeSale = {
	min = 9,
	max = 11
}
Config.MethSale = {
	min = 11,
	max = 13
}	
Config.WeedSale = {
	min = 7,
	max = 8
}				


Config.DrugEffects = {
	{ 
		UsableItem 				= "coke1g",						
		ProgressBarText			= "Fume du Crack",		
		UsableTime 				= 5000,							
		EffectDuration 			= 30,							
		FasterSprint 			= true,							
		SprintValue 			= 1.2,							
		MotionBlur 				= true,							
		TimeCycleModifier		= true,							
		TimeCycleModifierType	= "spectator5",					
		UnlimitedStamina		= true,							
		BodyArmor				= false,						
		AddArmorValue			= 10,							
		PlayerHealth			= false,						
		AddHealthValue			= 20,							
	},
	{ 
		UsableItem 				= "meth1g",						
		ProgressBarText			= "Fume de la Meth",				
		UsableTime 				= 5000,							
		EffectDuration 			= 30,							
		FasterSprint 			= false,						
		SprintValue 			= 1.2,							
		MotionBlur 				= true,							
		TimeCycleModifier		= true,							
		TimeCycleModifierType	= "spectator5",					 
		UnlimitedStamina		= false,						
		BodyArmor				= false,						
		AddArmorValue			= 10,							
		PlayerHealth			= true,							
		AddHealthValue			= 20,							
	},
	{ 
		UsableItem 				= "joint2g",					
		ProgressBarText			= "Fume un Joint",				
		UsableTime 				= 5000,							
		EffectDuration 			= 30,							
		FasterSprint 			= false,					
		SprintValue 			= 1.2,							
		MotionBlur 				= true,							
		TimeCycleModifier		= true,							
		TimeCycleModifierType	= "spectator5",					
		UnlimitedStamina		= false,						
		BodyArmor				= true,							
		AddArmorValue			= 10,							
		PlayerHealth			= false,						
		AddHealthValue			= 20,							
	}
}


Config.DrugConversion = {
	{ 
		UsableItem 				= "cokebrick",					
		RewardItem 				= "coke10g",					
		RewardAmount 			= {a = 6, b = 10},				
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 6, d = 10},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "COKE BRICK > COKE 10G",		
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "methbrick",					
		RewardItem 				= "meth10g",					
		RewardAmount 			= {a = 6, b = 10},				
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 6, d = 10},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "METH BRICK > METH 10G",		
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "weedbrick",					
		RewardItem 				= "weed20g",					
		RewardAmount 			= {a = 8, b = 10},				
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 8, d = 10},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "WEED BRICK > WEED 20G",		
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "coke10g",					
		RewardItem 				= "coke1g",						
		RewardAmount 			= {a = 6, b = 10},				
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 6, d = 10},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "COKE 10G > COKE 1G",			
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "meth10g",					
		RewardItem 				= "meth1g",						
		RewardAmount 			= {a = 6, b = 10},				
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 6, d = 10},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "METH 10G > METH 1G",			
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "weed20g",					
		RewardItem 				= "weed4g",						
		RewardAmount 			= {a = 4, b = 5},				
		MaxRewardItemInv		= {e = 46, f = 45},				
		RequiredItem 			= "drugbags",					
		RequiredItemAmount 		= {c = 4, d = 5},				
		HighQualityScale		= true,							
		hqscale					= "hqscale",					
		ProgressBarText			= "WEED 20G > WEED 4G",			
		ConversionTime			= 5000,							
	},
	{ 
		UsableItem 				= "weed4g",						
		RewardItem 				= "joint2g",					
		RewardAmount 			= 2,						
		MaxRewardItemInv		= {e = 44, f = 40},				
		RequiredItem 			= "rolpaper",					
		RequiredItemAmount 		= 2,					
		HighQualityScale		= false,						
		hqscale					= "hqscale",					
		ProgressBarText			= "WEED 4G > JOINT 2G",			
		ConversionTime			= 5000,							
	}
}

