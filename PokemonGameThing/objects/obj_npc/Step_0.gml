// Inherit the parent event

if (place_meeting(x, y, obj_player)) {
	var npcText = instance_create_layer(x,y,"instances", obj_dialog_simple_a);
	npcText.dialog.add(spr_npc, "hello this is a test and stuff");
}
