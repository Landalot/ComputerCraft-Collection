local cycles = ...

local height = 3

function breakLine(breakUpwards)

    if (breakUpwards == true) then

        for i = 2, height, 1 do
        
            turtle.dig()
            turtle.up()
    
        end

    else

        for i = 2, height, 1 do
        
            turtle.dig()
            turtle.down()
    
        end

    end

    turtle.dig()

end

function breakCycle()

    breakLine(true)
    
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()

    breakLine(false)

    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()

end

if (cycles == nil) then

    cycles = 1
    
end

for i  = 1,cycles,1 do

    breakCycle()  
     
end