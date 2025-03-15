RegisterNetEvent("va_weapon:givewp", function(weaponModel, targetId)
  local targetPed = GetPlayerPed(targetId)

  if targetPed <= 0 then
    TriggerClientEvent("chat:addMessage", source or 0, {
      args = { "sorry, invalid targetPed" }
    })
    return
  end

  GiveWeaponToPed(targetPed, weaponModel, 100, false, true)
end)
