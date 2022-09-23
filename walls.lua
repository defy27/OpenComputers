local robot = require("robot")

function build()
	robot.select(1)
	robot.placeDown()
	robot.up()
	robot.select(2)
	robot.placeDown()
	robot.back()
	robot.back()
	robot.drop(1)
end

function positioning()
	robot.turnLeft()
	robot.forward()
	robot.forward()
	robot.forward()
	robot.turnLeft()
	robot.forward()
	robot.forward()
	robot.forward()
end

function returnhome()
	robot.back()
	robot.turnLeft()
	robot.forward()
	robot.forward()
	robot.forward()
	robot.turnLeft()
end

while true do
	robot.turnRight()
	robot.select(1)
	robot.suck(1)
	robot.turnRight()
	robot.select(2)
	robot.suck(2)
	if robot.count(2)<2 then
	  robot.suck(2)
	end
	robot.turnAround()
	if robot.count(1)>0 and robot.count(2)>1 then
		robot.up()
		positioning()
		build()
		returnhome()
		robot.down()
		robot.down()
		os.sleep(1)
	end
end
