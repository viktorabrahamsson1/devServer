RegisterCommand("setjob", function(source, args, rawCommand)
  local playerServerId = source
  local job = args[1]

  if not job then return end
  local identifier = GetPlayerIdentifierByType(playerServerId, "license")
  MySQL.insert('INSERT INTO jobs (identifier,job) VALUES (?,?) ON DUPLICATE KEY UPDATE job = ?', {
    identifier,
    job,
    job
  }, function(id)
    if not id then
      TriggerClientEvent("chat:addMessage", playerServerId, {
        args = { "failed to insert job to database" }
      })
      return
    end
    TriggerClientEvent("chat:addMessage", playerServerId, {
      args = { "successfullt added job to database" }
    })
  end)
end, false)


RegisterCommand("getjob", function(source, args, rawCommand)
  local playerServerId = source;
  if not playerServerId then return end
  local identifier = GetPlayerIdentifierByType(playerServerId, "license")

  MySQL.scalar("SELECT job FROM jobs WHERE identifier = ? LIMIT 1", {
    identifier
  }, function(job)
    if not job then
      TriggerClientEvent("chat:addMessage", playerServerId, {
        args = { "Error getting job" }
      })
      return
    end
    TriggerClientEvent("chat:addMessage", playerServerId, {
      args = { "Your job is " .. job .. "." }
    })
  end)
end, false)
