RegisterCommand("sv", function(source, args, rawCommand)
  local carModel = args[1]

  if not carModel then
    TriggerEvent("chat:addMessage", {
      args = { "Provid a car model to spawn" }
    })
    return
  end

  RequestModel(carModel)
  while not HasModelLoaded(carModel) do
    Wait(10)
  end

  local carHash = GetHashKey(carModel)
  local playerPed = PlayerPedId()
  local coords = GetEntityCoords(playerPed)
  local heading = GetEntityHeading(playerPed)

  local veh = CreateVehicle(carHash, coords.x, coords.y, coords.z, heading, true, true)

  SetPedIntoVehicle(playerPed, veh, -1)
  SetModelAsNoLongerNeeded(carModel)

  TriggerEvent("chat:addMessage", {
    args = { "Vehicle spawned" }
  })
end, false)


RegisterCommand("dv", function(source, args, rawCommand)
  local playerPed = PlayerPedId()
  local coords = GetEntityCoords(playerPed)
  local veh = lib.getClosestVehicle(coords, 10, true)

  if not DoesEntityExist(veh) or not veh then
    TriggerEvent("chat:addMessage", {
      args = { "No vehicles nearby" }
    })
    return
  end
  DeleteVehicle(veh)
  TriggerEvent("chat:addMessage", {
    args = { "Vehicle deleted" }
  })
end, false)
