local inputSide = "left"
local outputSide = "front"
local threshold = 9

while true do
  
    local meetsThreshold
  
    if redstone.getAnalogInput(inputSide) >= threshold then
        meetsThreshold = true
    else
        meetsThreshold = false
    end

    redstone.setOutput(outputSide, meetsThreshold)

    if meetsThreshold then
        sleep(2)
    else
        sleep(5)
    end

end
