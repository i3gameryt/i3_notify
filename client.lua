RegisterCommand("testnotify", function()
    TriggerEvent("i3_notify:send", "Join Discord For More Updates.", 6000)
    Wait(1000)
    TriggerEvent("i3_notify:send", "This is a long message that. dadaw da dwa dawd dwa dwa daw dwa dwa ", 8000)
end)

RegisterNetEvent("i3_notify:send", function(message, duration)
    SendNUIMessage({
        action = "showNotification",
        message = message,
        notifyType = "primary",
        duration = duration or 5000
    })
end)


-- use

-- TriggerEvent("i3_notify:send", "message", 6000)
