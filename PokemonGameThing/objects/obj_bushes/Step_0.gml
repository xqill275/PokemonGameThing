// Only check for an encounter if the cooldown is over
if (place_meeting(x, y, obj_player) && encounter_cooldown <= 0) {
    var randomNumber = irandom(100); // Use irandom for an integer value
    if (randomNumber <= encounterChance) {
        show_debug_message("There was an encounter!");
        encounter_cooldown = 60; // Set cooldown (e.g., 60 frames = 1 second)
    }
}

// Reduce cooldown every step
if (encounter_cooldown > 0) {
    encounter_cooldown--;
}
