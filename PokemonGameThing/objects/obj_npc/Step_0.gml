// Inherit the parent event

if (place_meeting(x, y, obj_player) && keyboard_check_pressed(interactkey)) {
    if (delayTimer <= 0) {
        var npcText = instance_create_layer(x, y, "instances", obj_dialog_simple_a);
        npcText.dialogSpriteArray = [spr_empty, spr_npc, spr_player, spr_ground];
        npcText.dialogArray = ["","hello this is a test and stuff", "Huh?", "ahhhhhh it hurts when you step on me!!!!"];
        delayTimer = 10; // Set delay (measured in frames)
    }
}

// Decrement timer every step
delayTimer = max(delayTimer - 1, 0);


if (moveTimer <= 0) {
    var directionChoice = irandom(3); // 0 = Up, 1 = Down, 2 = Left, 3 = Right
    var moveAmount = 64; // Adjust for grid-based movement

    // Move NPC in a random direction if there is no collision
    if (directionChoice == 0 && !place_meeting(x, y - moveAmount, obj_solid)) y -= moveAmount; // Up
    else if ( directionChoice == 1 && !place_meeting(x, y + moveAmount, obj_solid)) y += moveAmount; // Down
    else if ( directionChoice == 2 && !place_meeting(x - moveAmount, y, obj_solid)) x -= moveAmount; // Left
    else if ( directionChoice == 3 && !place_meeting(x + moveAmount, y, obj_solid)) x += moveAmount; // Right

    moveTimer = irandom_range(30, 90); // Random wait time before moving again (30-90 frames)
}

moveTimer = max(moveTimer - 1, 0);
