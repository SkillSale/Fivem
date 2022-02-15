-------------------------------------------------
--Created by SkillSale
-------------------------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local essence = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'water', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'water', _U('water_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'water', 'Water', 'society_water', 'society_water', 'society_water', {type = 'private'})
local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "EauFarm" then
			local itemQuantity = xPlayer.getInventoryItem('eau').count
			if itemQuantity >= 40 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(4000, function()
					xPlayer.addInventoryItem('eau', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_waterjob:startHarvest')
AddEventHandler('esx_waterjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('eau_taken'))  
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_waterjob:stopHarvest')
AddEventHandler('esx_waterjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~puiser de l\'eau')
		PlayersHarvesting[_source]=true
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementBouteille" then
			local itemQuantity = xPlayer.getInventoryItem('eau_raffin').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raffine'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1500, function()
						xPlayer.removeInventoryItem('eau_raffin', 2)
						xPlayer.addInventoryItem('water', 1)
						TriggerClientEvent('esx:showNotification', source, _U('not_enough_raffine'))
						Transform(source, zone)
					end)
				else
					SetTimeout(4000, function()
						xPlayer.removeInventoryItem('eau_raffin', 2)
						xPlayer.addInventoryItem('water', 1)
				
						Transform(source, zone)
					end)
				end
			end
		elseif zone == "TraitementEau" then
			local itemQuantity = xPlayer.getInventoryItem('eau').count
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_eau'))
				return
			else
				SetTimeout(4000, function()
					xPlayer.removeInventoryItem('eau', 1)
					xPlayer.addInventoryItem('eau_raffin', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end
	end	
end	

RegisterServerEvent('esx_waterjob:startTransform')
AddEventHandler('esx_waterjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_waterjob:stopTransform')
AddEventHandler('esx_waterjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~conditionner votre eau')
		PlayersTransforming[_source]=true
		
	end
end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		
		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('water').count <= 0 then
				water = 0
			else
				water = 1
			end
			
		
			if water == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('water').count <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_water_sale'))
				water = 0
				return
			else
				if (water == 1) then
					SetTimeout(2000, function()
						local argent = math.random(20,20)
						local money = math.random(30,50)
						xPlayer.removeInventoryItem('water', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_water', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
						
							xPlayer.addMoney(argent)
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_earned') .. argent)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				end
				
			end
		end
	end
end

RegisterServerEvent('esx_waterjob:startSell')
AddEventHandler('esx_waterjob:startSell', function(zone)

	local _source = source
	
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_waterjob:stopSell')
AddEventHandler('esx_waterjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_waterjob:getStockItem')
AddEventHandler('esx_waterjob:getStockItem', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_water', function(inventory)
		local item = inventory.getItem(itemName)
		local sourceItem = xPlayer.getInventoryItem(itemName)

		-- is there enough in the society?
		if count > 0 and item.count >= count then

			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('player_cannot_hold'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn', count, item.label))
			end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
		end
	end)
end)

ESX.RegisterServerCallback('esx_waterjob:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_water', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterServerEvent('esx_waterjob:putStockItems')
AddEventHandler('esx_waterjob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_water', function(inventory)
		local item = inventory.getItem(itemName)
		local playerItemCount = xPlayer.getInventoryItem(itemName).count

		if item.count >= 0 and count <= playerItemCount then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, item.label))
	end)
end)

ESX.RegisterServerCallback('esx_waterjob:getPlayerInventory', function(source, cb)
	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({items = items})
end)