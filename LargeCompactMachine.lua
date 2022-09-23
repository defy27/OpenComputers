local robot = require("robot")

function placer1()
	robot.down()
	robot.down()
	robot.down()
	robot.down()
	robot.placeDown()
	robot.up()
	robot.placeDown()
	robot.up()
	robot.placeDown()
	robot.up()
	robot.placeDown()
	robot.up()
	robot.placeDown()
end

function placer2()
	robot.down()
	robot.down()
	robot.down()
	robot.down()
	robot.placeDown()
	robot.up()
	robot.up()
	robot.up()
	robot.up()
	robot.placeDown()
end

function build()
	robot.select(1)
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.turnRight()

	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.turnRight()

	robot.forward()
	placer1()
	robot.turnRight()

	robot.forward()
	placer2()
	robot.forward()
	placer2()
	robot.forward()
	placer2()
	robot.turnLeft()

	robot.forward()
	placer2()
	robot.turnLeft()

	robot.select(2)

	robot.forward()
	placer2()
	robot.forward()
	placer2()
	robot.forward()
	placer1()
	robot.turnRight()

	robot.forward()
	placer1()
	robot.turnRight()

	robot.forward()
	placer2()
	robot.forward()
	placer2()
	robot.forward()
	placer2()
	robot.turnLeft()

	robot.forward()
	placer1()
	robot.turnLeft()

	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	placer1()
	robot.forward()
	robot.turnRight()

	robot.forward()
	robot.forward()
	robot.turnAround()
	robot.select(3)
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
	robot.forward()
	robot.forward()
	robot.forward()
	robot.forward()
	robot.forward()
	robot.turnLeft()
end

while true do
	robot.turnRight()
 	robot.turnRight()
	robot.select(1)
	robot.suck(robot.space(1))
	if robot.count(1)<64 then
		robot.suck(robot.space(1))
	end
	robot.select(2)
	robot.suck(robot.space(2))
 	if robot.count(2)<64 then
		robot.suck(robot.space(2))
	end
	robot.turnRight()
	robot.select(3)
	robot.suck(1)
	if robot.count(1)==64 and robot.count(2)==64 and robot.count(3)>0 then
		robot.turnRight()
		robot.up()
		robot.up()
		robot.up()
		robot.up()
		robot.up()
		positioning()
		build()
		returnhome()
		robot.down()
		robot.down()
		robot.down()
		robot.down()
		robot.down()
		os.sleep(20)
	end
end
