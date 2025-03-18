RegisterCommand("getid", function(source, args, rawCommand)
  print(source)
end, false)


RegisterCommand("tpto", function(source, args, rawCommand)
  local targetId = args[1]
  local playerId = source

  if not targetId then
    TriggerClientEvent("chat:addMessage", playerId, { args = { "Provide a targetid to tp to" } })
    return
  end

  local playerPed = GetPlayerPed(playerId)
  local targetPed = GetPlayerPed(targetId)

  if targetPed <= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "could not get target ped" }
    })
    return
  end
  local targetCoords = GetEntityCoords(targetPed)

  SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, targetCoords.z, true, false, false, false)
  TriggerClientEvent("chat:addMessage", playerId, {
    args = { "You have teleported to the player with id " .. targetId .. "" }
  })
end, false)

RegisterCommand("bring", function(source, args, rawCommand)
  local playerId = source
  local targetId = args[1]

  if not targetId then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "provid a target id " }
    })
    return
  end

  local playerPed = GetPlayerPed(playerId)
  local targetPed = GetPlayerPed(targetId)
  local coords = GetEntityCoords(playerPed)

  if targetPed <= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "could not get target ped with the id " .. targetId .. "" }
    })
  end

  SetEntityCoords(targetPed, coords.x, coords.y, coords.z, true, false, false, false)
  TriggerClientEvent("chat:addMessage", playerId, {
    args = { "You have bringed the player with id " .. targetId .. "" }
  })
end, false)


RegisterCommand("getids", function(source, args, rawCommand)
  for _, playerId in pairs(GetPlayers()) do
    local playerName = GetPlayerName(playerId)
    print("Player: " .. playerName .. " has the id of: " .. playerId .. " ")
  end
end, false)
