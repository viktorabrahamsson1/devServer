CreateThread(function()
  while true do
    Wait(10)
    local playerId = PlayerPedId()
    local playerCoords = GetEntityCoords(playerId)
    local playerHeading = GetEntityHeading(playerId)

    SendNuiMessage(json.encode({
      type = 'position',
      x = playerCoords.x,
      y = playerCoords.y,
      z = playerCoords.z,
      heading = playerHeading
    }))
  end
end)


-- NUI CALLBACKS

CreateThread(function()
  while true do
    Wait(5000)
    SendNuiMessage(json.encode {
      type = "ping"
    })
  end
end)


RegisterNuiCallback("pong", function(data, cb)
  print("Got pong, the value of id is:  ", json.encode(data.itemId))
  cb({
    acceptedPong = true
  })
end)

RegisterNuiCallback("releseFocus", function(data, cb)
  cb({})
  SetNuiFocus(false, false)
end)

RegisterNuiCallback("teleport", function(data, cb)
  cb({})
  SetEntityCoords(PlayerPedId(), tonumber(data.x), tonumber(data.y), tonumber(data.z), true, false, false, false)
end)


RegisterCommand("+openteleporter", function()
  SetNuiFocus(true, true)
end, false)

RegisterKeyMapping("+openteleporter", "Open Teleporter", "keyboard", "F5")
