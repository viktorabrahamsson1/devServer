-- Notafications

local function showNotification(message, color, flash, saveToBreif)
  BeginTextCommandThefeedPost("STRING")
  AddTextComponentSubstringPlayerName(message)
  ThefeedNextPostBackgroundColor(color)
  EndTextCommandThefeedPostTicker(flash, saveToBreif)
end

RegisterCommand("testnotification", function(_, _, rawCommand)
  showNotification(rawCommand, 130, true, true)
end, false)
