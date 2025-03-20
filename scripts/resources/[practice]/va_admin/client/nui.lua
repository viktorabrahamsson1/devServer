-- 1. Give players with their info to nui
AddEventHandler("web:playerData", function()
  local data = {}
  local players = GetPlayers()
  data.players = players
  if not players then return end

  SendNuiMessage(json.encode(players))
end)
-- 2. perform the actions we want on the users (tp,bring,heal,repair car,kick...)
