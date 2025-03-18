-- RegisterCommand("sv", function(source, args, rawCommand)
--   local carModel = args[1] or "adder"

--   if carModel and IsModelAVehicle(carModel) then
--     RequestModel(carModel)
--     while not HasModelLoaded(carModel) do
--       Citizen.Wait(10)
--     end
--   else
--     TriggerEvent("chat:addMessage", {
--       args = { 'Carmodel: ' .. carModel .. ' is not a valid model' }
--     })
--     return
--   end

--   local playerPed = PlayerPedId()
--   local pos = GetEntityCoords(playerPed)
--   local heading = GetEntityHeading(playerPed)

--   local vehicle = CreateVehicle(carModel, pos.x, pos.y, pos.z, heading, true, false)
--   SetPedIntoVehicle(playerPed, vehicle, -1)
--   SetModelAsNoLongerNeeded(carModel)
-- end, false)


-- RegisterCommand("dv", function(source, args, rawCommand)
--   local playerPed = PlayerPedId();
--   local vehToDelete = GetVehiclePedIsIn(playerPed, false)
--   if vehToDelete ~= 0 then
--     DeleteVehicle(vehToDelete)
--     TriggerEvent("chat:addMessage", {
--       args = { "vehicle was deleted" }
--     })
--   end
-- end, false)
