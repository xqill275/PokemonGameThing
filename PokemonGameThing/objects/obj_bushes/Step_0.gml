
if (place_meeting(x, y, obj_player) && encounter_cooldown <= 0) {
    var randomNumber = irandom(100);
    if (randomNumber <= encounterChance) {
        show_debug_message("There was an encounter!");
        encounter_cooldown = 60; 
		
		global.player_x = x;
		global.player_y = y;
		room_goto(rm_battle);
    }
}

// Reduce cooldown every step
if (encounter_cooldown > 0) {
    encounter_cooldown--;
}
