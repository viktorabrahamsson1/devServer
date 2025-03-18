AddEventHandler("tpto", function(targetId)
  local playerId = source
  local playerPed = GetPlayerPed(playerId)
  local targetPed = GetPlayerPed(targetId)

  if playerPed ~= 0 or targetPed ~= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "INVALID PLAYER OR TARGET PED" }
    })
    return
  end

  local targetCoords = GetEntityCoords(targetPed)
  SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, targetCoords.z, true, false, false, false)
end)

AddEventHandler("bring", function(targetId)
  local playerId = source
  local playerPed = GetPlayerPed(playerId)
  local targetPed = GetPlayerPed(targetId)

  if playerPed ~= 0 or targetPed ~= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { "INVALID PLAYER OR TARGET PED" }
    })
    return
  end

  local playerCoords = GetEntityCoords(playerPed)
  SetEntityCoords(targetPed, playerCoords.x, playerCoords.y, playerCoords.z, true, false, false, false)
end)
