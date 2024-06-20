local cycles = ...

function breakLine(lHeight, breakUpwards)

    if (breakUpwards == true) then

        for i = 2, lHeight, 1 do
        
            turtle.dig()
            turtle.up()
    
        end

    else

        for i = 2, lHeight, 1 do
        
            turtle.dig()
            turtle.down()
    
        end

    end

    turtle.dig()

end

function breakCycle()

    local height = 3

    breakLine(height,true)
    
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()

    breakLine(height,false)

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