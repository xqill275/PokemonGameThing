/// @description 
if (!dialogReady) { 
    if (array_length(dialogArray) > 0) { // Fixed incorrect condition
        for (var i = 0; i < array_length(dialogArray); i++) {
            dialog.add(dialogSpriteArray[i], dialogArray[i]);
        }
        dialogReady = true;
    }
}

// Reduce cooldown timer
if (dialog_cooldown > 0) {
    dialog_cooldown--;
}

if (!showing_dialog && dialogReady && dialog_cooldown <= 0) {
    if (dialog.count() <= 0) {
        instance_destroy();
        return;
    }
    
    current_dialog = dialog.pop();
    showing_dialog = true;
} else {
    if (keyboard_check_released(key_next) && dialog_cooldown <= 0) {
        showing_dialog = false;
        alpha = 0;
        dialog_cooldown = 10; // Add delay before the next dialog appears
    }
}