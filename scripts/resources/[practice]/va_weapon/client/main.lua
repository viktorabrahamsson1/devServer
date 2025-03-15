RegisterCommand("wp", function(source, args, rawCommand)
  local weaponModel = args[1];
  if weaponModel and IsWeaponValid(weaponModel) then
    RequestModel(weaponModel)
    while HasModelLoaded(weaponModel) do
      Wait(10)
    end
    GiveWeaponToPed(PlayerPedId(), weaponModel, 1000, false, true)
    TriggerEvent("chat:addMessage", {
      args = { "Weapon: " .. weaponModel .. " added" }
    })
  else
    TriggerEvent("chat:addMessage", {
      args = { "invalid weapon: " .. weaponModel .. "" }
    })
  end
end, false)

RegisterCommand("givewp", function(_, args)
  local weaponModel = args[1]
  local targetId = args[2]

  if not weaponModel or not IsWeaponValid(weaponModel) then
    TriggerEvent("chat:addMessage", {
      args = { "Sorry " .. weaponModel .. " is not a valid model" }
    })
    return
  end

  TriggerServerEvent("va_weapon:givewp", weaponModel, targetId)
end, false)
