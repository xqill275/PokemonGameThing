var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));
var leftKey = keyboard_check(ord("A"));
var rightKey = keyboard_check(ord("D"));
var runKey = keyboard_check(vk_lshift);

running = runKey;

if (x == targetX && y == targetY) {
    moving = false;
}


if (!moving) {
    var newTargetX = targetX;
    var newTargetY = targetY;

    if (upKey) {
        newTargetY -= gridSize;
    } else if (downKey) {
        newTargetY += gridSize;
    } else if (leftKey) {
        newTargetX -= gridSize;
    } else if (rightKey) {
        newTargetX += gridSize;
    }

    // Check collision before updating target position
    if (!place_meeting(newTargetX, newTargetY, obj_solid_other)) {
		if (upKey || downKey || leftKey || rightKey) {
	        targetX = newTargetX;
	        targetY = newTargetY;
	        moving = true;
		}
    }
}

if (moving) {
    spd = baseSpd;
    if (runKey) {
        spd *= runMult;
    }
    
    var dir = point_direction(x, y, targetX, targetY);
    var newX = x + lengthdir_x(spd, dir);
    var newY = y + lengthdir_y(spd, dir);
	
	x = newX;
	y = newY;
	

}
