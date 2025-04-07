var touchingPlayer = place_meeting(x - 64, y, obj_player) || 
                     place_meeting(x + 64, y, obj_player) || 
                     place_meeting(x, y + 64, obj_player) || 
                     place_meeting(x, y - 64, obj_player);

 // Inherit the parent event

if (touchingPlayer) {
	
    if (keyboard_check_pressed(interactkey) && delayTimer <= 0 && canTalk) {
		if (!instance_exists(obj_dialog_simple_a)) {
			talking = true;
			var npcText = instance_create_layer(x, y, "instances", obj_dialog_simple_a);
	        npcText.dialogSpriteArray = [spr_empty, spr_npc];
	        npcText.dialogArray = ["","hello i am a second npc, i am going to fuck you mother"]

	        delayTimer = 10;
	        canTalk = false;
		}
	}
} 

if (!instance_exists(obj_dialog_simple_a)) {
	    talking = false;
}

if (!canTalk && delayTimer <= 0) {
	canTalk = true;
}

// Decrement timer every step
delayTimer = max(delayTimer - 1, 0);


if (moveTimer <= 0 && talking == false) {
    var directionChoice = irandom(3); // 0 = Up, 1 = Down, 2 = Left, 3 = Right
    var moveAmount = 64; // Adjust for grid-based movement

    // Move NPC in a random direction if there is no collision
    if (directionChoice == 0 && !place_meeting(x, y - moveAmount, obj_solid_other) && !place_meeting(x, y - moveAmount, obj_solid_player)) y -= moveAmount; // Up
    else if ( directionChoice == 1 && !place_meeting(x, y + moveAmount, obj_solid_other) &&  !place_meeting(x, y + moveAmount, obj_solid_player)) y += moveAmount; // Down
    else if ( directionChoice == 2 && !place_meeting(x - moveAmount, y, obj_solid_other) &&  !place_meeting(x - moveAmount, y, obj_solid_player)) x -= moveAmount; // Left
    else if ( directionChoice == 3 && !place_meeting(x + moveAmount, y, obj_solid_other)  &&  !place_meeting(x + moveAmount, y, obj_solid_player)) x += moveAmount; // Right

    moveTimer = irandom_range(30, 90); // Random wait time before moving again (30-90 frames)
}



// Decrement timer every step
moveTimer = max(moveTimer - 1, 0);



