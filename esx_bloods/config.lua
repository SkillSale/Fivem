Config                            = {}

Config.DrawDistance               = 100.0

Config.MarkerType                 = 0

Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }

Config.MarkerColor                = { r = 0, g = 0, b = 255 }

Config.EnablePlayerManagement     = true

Config.EnableArmoryManagement     = true

Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity

Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds

Config.EnableSocietyOwnedVehicles = false

Config.EnableLicenses             = false

Config.MaxInService               = -1

Config.Locale                     = 'fr'



Config.BloodsStations = {

  Bloods = {



    Blip = {

      Pos     = {},

      Sprite  = -1,

      Display = 4,

      Scale   = 1.0,

      Colour  = 29,

    },



    AuthorizedWeapons = {

     	  

    },



	  AuthorizedVehicles = {

		  { name = 'sultan',    label = 'sultan' },

		  { name = 'manchez',  label = 'manchez' },

		  { name = 'voodoo',     label = 'voodoo' },

	  },


    Cloakrooms = {

      { x = 76.0, y = -1960.92, z = 20.77 }, -- fait

    },


    Armories = {
      
      { x = 72.93, y = -1964.87, z = 20.73 }, -- fait

    },


    Vehicles = {

      {

        Spawner    = { x = 84.14, y = -1972.77, z = 20.87 }, -- fait

        SpawnPoint = { x = 90.94, y = -1965.12, z = 20.75 }, -- fait

        Heading    = 175.38, -- fait

      }

    },


    VehicleDeleters = {

      { x = 101.35, y = -1964.37, z = 20.84 }, -- fait


    },



    BossActions = {

      { x = 69.65, y = -1971.15, z = 20.81 } -- fait

    },



  },



}