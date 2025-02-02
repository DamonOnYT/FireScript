RegisterServerEvent("FireScript:FirePutOut")
AddEventHandler("FireScript:FirePutOut", function(x, y, z)
	TriggerClientEvent('FireScript:StopFireAtPosition', -1, x, y, z)
end)

RegisterCommand('startfire', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StartFireAtPlayer', -1, source, tonumber(args[1]), tonumber(args[2]), args[3] == "true")
	print("starting fire")
    TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " started a fire")
end, false)

RegisterCommand('stopfire', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopFiresAtPlayer', -1, source)
	print("stopping fire")
	TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " stopped a fires")

end, false)

RegisterCommand('stopallfires', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopAllFires', -1)
	print("stopping all fires")
	TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " stopped all fires")
end, false)

RegisterCommand('startsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StartSmokeAtPlayer', -1, source, tonumber(args[1]))
	print("starting smoke")
	TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " started smoke")
end, false)

RegisterCommand('stopsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopSmokeAtPlayer', -1, source)
	print("stopping smoke")
	TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " stopped smoke")
end, false)

RegisterCommand('stopallsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopAllSmoke', -1)
	print("stopping all smoke")
	TriggerEvent("vMenu:DamonLog", GetPlayerName(source) .. " stopped all smoke")
end, false)

print('FireScript by Albo1125 (LUA, C#. FiveM)')