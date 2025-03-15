RegisterNetEvent("va_teleporter:goto", function(targetId)
  local playerId = source or 0
  local targetPed = GetPlayerPed(targetId)

  if targetPed <= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { 'Sorry, ' .. targetId .. 'dose not seem to exist' }
    })
    return
  end

  local targetCoords = GetEntityCoords(targetPed)
  SetEntityCoords(playerId, targetCoords.x, targetCoords.y, targetCoords.z, true, false, false, false)
end)


RegisterNetEvent("va_teleporter:sm", function(targetId)
  local playerId = source or 0
  local targetPed = GetPlayerPed(targetId)
  if targetPed <= 0 then
    TriggerClientEvent("chat:addMessage", playerId, {
      args = { 'Sorry, ' .. targetId .. 'dose not seem to exist' }
    })
    return
  end
  local coords = GetEntityCoords(GetPlayerPed(playerId))
  SetEntityCoords(targetPed, coords.x, coords.y, coords.z, true, false, false, false)
end)
