local robot = require("robot")

function fluid()
	while not robot.detectUp() do
		robot.up()
	end
	robot.turnRight()
	robot.turnRight()
	while not robot.detect() do
		robot.forward()
	end
	robot.turnRight()
	while not robot.detect() do
		robot.forward()
	end
	robot.down()
	robot.down()
	robot.down()
	robot.down()
	robot.down()
	robot.select(1)
	while robot.count(1)>0 and robot.tankSpace()>1000 do
		robot.dropDown(1)
		robot.drainDown()
		os.sleep(1)
	end
	robot.turnRight()
	robot.suck(32)
	while not robot.detectUp() do
		robot.up()
	end
	robot.turnRight()
	while not robot.detect() do
		robot.forward()
	end
	robot.turnLeft()
	robot.forward()
	robot.forward()
	robot.forward()
	robot.forward()
	while not robotdetectDown() do
		robot.down()
	end
	while robot.tankLevel()>0 do
		robot.fill()
	end
end


while robot.count(1)>0 and robot.tankLevel()<1000 do
	fluid()
end
