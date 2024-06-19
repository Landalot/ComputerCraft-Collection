local cycles = ...

function breakcycle()

    local height = 3

    for i = 2, height, 1 do
        
        turtle.dig()
        turtle.up()

    end
    
    turtle.dig()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()

    for i = 2, height, 1 do
        
        turtle.dig()
        turtle.down()

    end

    turtle.dig()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()

end

if (cycles == nil) then

    cycles = 1
    
end

for i  = 1,cycles,1 do

    breakcycle()  
     
end