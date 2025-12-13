local monitor = peripheral.wrap("left")

local function writeAt(x,y, text, col)
    monitor.setCursorPos(x,y)
    monitor.setTextColor(col or colors.white)
    monitor.write(text)
end

local count = 0
local exitTrigger = 0

local function touch()
    _, side, x, y = os.pullEvent("monitor_touch")

    print(side, "was touched.")

    if x <= 3 and y == 1 then
        exitTrigger = 1
    end

    writeAt(x,y, "Beans")
    writeAt(1,1, count)
    count = count + 1
end

while true do
    touch()
    if exitTrigger == 1 then
        monitor.clear()
        break
    end
end
