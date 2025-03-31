var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));
var leftKey = keyboard_check(ord("A"));
var rightKey = keyboard_check(ord("D"));
var runKey = keyboard_check(vk_lshift);

if (x == targetX && y == targetY) {
	moving = false;
}

if (runKey) {
	running = true;
}



if (!moving) {
	if (upKey) {
		targetY -= gridSize;
	} else if(downKey) {
		targetY += gridSize;
	}  else if(leftKey) {
		targetX -= gridSize;
	}  else if(rightKey) {
		targetX += gridSize;
	}
	
	if (upKey || downKey || leftKey || rightKey) {
		moving = true;
	}
	
	
}


if (moving) {
	spd = baseSpd;
	if (runKey) {
		spd *= runMult
	}
	
	var dir = point_direction(x, y, targetX, targetY);
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	

}
