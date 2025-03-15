AddEventHandler("playerSpawned", function()
  TriggerServerEvent("va_greeting:show")
end)

RegisterCommand("testGreeting", function()
  TriggerServerEvent("va_greeting:show")
end, false)
