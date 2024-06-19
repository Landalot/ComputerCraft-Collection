local cycles = ...

function breakcycle()

    turtle.dig()
    turtle.up()
    turtle.dig()
    turtle.up()
    turtle.dig()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
    turtle.dig()
    turtle.down()
    turtle.dig()
    turtle.down()
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