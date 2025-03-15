-- MORE EFFICIENT
RegisterCommand("+openhood", function()
  local playerPed = PlayerPedId()
  local vehPedIsIn = GetVehiclePedIsIn(playerPed, false)

  if vehPedIsIn <= 0 or GetPedInVehicleSeat(vehPedIsIn, -1) ~= playerPed then return end

  if GetVehicleDoorAngleRatio(vehPedIsIn, 4) > 0.1 then
    SetVehicleDoorShut(vehPedIsIn, 4, false)
  else
    SetVehicleDoorOpen(vehPedIsIn, 4, false, false)
  end
end, false)

RegisterCommand("+opentrunk", function()
  local playerPed = PlayerPedId()
  local vehPedIsIn = GetVehiclePedIsIn(playerPed, false)

  if vehPedIsIn <= 0 or GetPedInVehicleSeat(vehPedIsIn, -1) ~= playerPed then return end

  if GetVehicleDoorAngleRatio(vehPedIsIn, 5) > 0.1 then
    SetVehicleDoorShut(vehPedIsIn, 5, false)
  else
    SetVehicleDoorOpen(vehPedIsIn, 5, false, false)
  end
end, false)


RegisterKeyMapping("+openhood", "open vehicle hood", "keyboard", "PAGEUP")
RegisterKeyMapping("+opentrunk", "open vehicle trunk", "keyboard", "PAGEDOWN")

-- CreateThread(function(threadId)
--   while true do
--     local playerPed = PlayerPedId()
--     local vehPedIsIn = GetVehiclePedIsIn(playerPed, false)

--     if vehPedIsIn > 0 and GetPedInVehicleSeat(vehPedIsIn, -1) == playerPed then
--       if IsControlJustReleased(0, 208) then
--         if GetVehicleDoorAngleRatio(vehPedIsIn, 4) > 0.1 then
--           SetVehicleDoorShut(vehPedIsIn, 4, false)
--         else
--           SetVehicleDoorOpen(vehPedIsIn, 4, false, false)
--         end
--       end

--       if IsControlJustReleased(0, 207) then
--         if GetVehicleDoorAngleRatio(vehPedIsIn, 5) > 0.1 then
--           SetVehicleDoorShut(vehPedIsIn, 5, false)
--         else
--           SetVehicleDoorOpen(vehPedIsIn, 5, false, false)
--         end
--       end
--     end
--     Wait(0)
--   end
-- end)
