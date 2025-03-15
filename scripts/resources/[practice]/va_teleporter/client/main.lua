RegisterCommand("goto", function(_, args, rawCommand)
  local targetId = args[1]

  if not targetId then
    TriggerEvent("chat:addMessage", {
      args = { "Please provide a target id" }
    })
    return
  end

  TriggerServerEvent("va_teleporter:goto", targetId)
end, false)

RegisterCommand("sm", function(_, args)
  local targetId = args[1]

  if not targetId then
    TriggerEvent("chat:addMessage", {
      args = { "Please provide a target id" }
    })
    return
  end

  TriggerServerEvent("va_teleporter:sm", targetId)
end, false)
