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



Config.BikersStations = {

  Bikers = {



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

      { x = 90.51, y = 3749.84, z = 40.77 }, -- fait

    },


    Armories = {
      
      { x = 91.87, y = 3747.56, z = 40.77 }, -- fait

    },


    Vehicles = {

      {

        Spawner    = { x = 99.67, y = 3742.9, z = 39.74 }, -- fait

        SpawnPoint = { x = 99.67, y = 3742.9, z = 39.74 }, -- fait

        Heading    = 175.38, -- fait

      }

    },


    VehicleDeleters = {

      { x = 99.85, y = 3732.96, z = 39.64 }, -- fait


    },



    BossActions = {

      { x = 28.04, y = 3665.98, z = 40.44 } -- fait

    },



  },



}