if (battleStart == false) {
	var xoffset = 0
	var yoffset = 0
	var randomChoice = irandom(array_length(creatureList)-1);
	selectedCreature = creatureList[randomChoice]
	instance_create_layer(x, y, "instances", selectedCreature);
	for (var i = 0; i <array_length(buttonList); i++) {
		instance_create_layer(buttonStartX+xoffset, buttonStartY+yoffset, "instances", buttonList[i])
		yoffset += 70
	}
	battleStart = true;
}