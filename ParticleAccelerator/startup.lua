while true do
    local redstoneBack = redstone.getAnalogInput("back")
    if redstoneBack < 7 then
        redstone.setOutput("front", false)
    elseif redstoneBack < 8 then
        -- Nil
    else
        redstone.setOutput("front", true)
        sleep(1)
    end
    sleep(0.05)
end
