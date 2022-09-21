local robot = require("robot")

function placer()
	robot.down()
	robot.down()
	robot.select(1)
	robot.placeDown()
	robot.up()
	robot.placeDown()
	robot.up()
	robot.placeDown()
end

function build()
	robot.select(1)
	placer()
	robot.forward()
	placer()
	robot.forward()
	placer()
	robot.turnRight()
	
	robot.forward()
	placer()
	robot.forward()
	placer()
	robot.turnRight()
	
	robot.forward()
	placer()
	robot.turnRight()
	
	robot.forward()
	robot.down()
	robot.down()
	robot.placeDown()
	robot.up()
	robot.select(2)
	robot.placeDown()
	robot.up()
	robot.select(1)
	robot.placeDown()
	robot.turnLeft()
	
	robot.forward()
	placer()
	robot.turnLeft()
	
	robot.forward()
	placer()
	robot.forward()
	placer()
end

while robot.count(1)>25 and robot.count(2)>0 and robot.count(3)>0 do
	robot.turnRight()
	robot.select(1)
	robot.suck(26)
	if robot.count(1)<26 then
		robot.suck(26-robot.count(1))
	end
	robot.turnRight()
	robot.select(2)
	robot.suck(1)
	robot.turnRight()
	robot.select(3)
	robot.suck(1)
	
