RegisterCommand("settp", function(source, args, rawCommand)
  local playerId = source
  local coords = GetEntityCoords(GetPlayerPed(playerId))
  local identifier = GetPlayerIdentifierByType(playerId, "license")

  if not identifier then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "ERROR from setspawn: could not get identifier from player", name }
    })
  end
  local coordsString = json.encode({ x = coords.x, y = coords.y, z = coords.z }) -- Convert vector3 to JSON string

  MySQL.insert("INSERT INTO spawnlocation (identifier,coords) VALUES (?,?) ON DUPLICATE KEY UPDATE coords = ?", {
    identifier,
    coordsString,
    coordsString
  }, function(id)
    if not id then
      TriggerClientEvent("chat:addMessage", playerId, {
        args = { "failed to set spawnlocation! " }
      })
      return
    end
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "New spawnlocation has been set!" }
    })
  end
  )
end, false)

RegisterCommand("tp", function(source, args, rawCommand)
  local playerId = source
  local identifier = GetPlayerIdentifierByType(playerId, "license")

  if not identifier then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "ERROR from playerconnecting: could not get identifier from player", name }
    })
  end

  MySQL.query("SELECT coords FROM spawnlocation WHERE identifier = ?", {
    identifier
  }, function(result)
    if not result then
      TriggerClientEvent("chat:addMesage", playerId, {
        args = { "Error from result: could not get the coordinates" }
      })
      return
    end
    local coords = json.decode(result[1].coords) -- Decode JSON into table


    if not coords then
      TriggerClientEvent("chat:addMesage", playerId, {
        args = { "Error from coords: could not get the coordinates" }
      })
      return
    end
    SetEntityCoords(GetPlayerPed(playerId), coords.x, coords.y, coords.z, true, false, false, false)

    TriggerClientEvent("va_spawn:spawn", playerId, coords)
  end)
end, false)
