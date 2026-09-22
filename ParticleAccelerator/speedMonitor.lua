local reader = peripheral.wrap("back")
local monitor = peripheral.wrap("top")

local function getSpeed()
    local readerData = reader.getBlockData()

    local particle
    if readerData ~= nil then
        particle = readerData["particle"]
    end

    local speed
    if particle ~= nil then
        speed = particle["speed"]
    else
        speed = nil
    end

    return speed
end

local function writeAtPos(x,y,text,monitorToWrite)
    if monitorToWrite == nil then
        monitorToWrite = monitor
    end

    monitorToWrite.setCursorPos(x,y)
    monitorToWrite.write(text)
end

while true do
    local speed = getSpeed()

    if speed ~= nil then

        writeAtPos(1,1,"Part.",monitor)
        writeAtPos(1,2,"Speed:",monitor)
        writeAtPos(1,3,speed,monitor)
        writeAtPos(1,4,"m/s",monitor)
    else
        writeAtPos(1,1,"No")
        writeAtPos(1,2,"Part.")
        writeAtPos(1,3,"Found!",monitor)
    end
    sleep(0.2)
    monitor.clear()
end


