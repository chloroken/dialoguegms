/// @arg sprite
/// @arc choicechount
function setDialogue(sprite,choicecount){
	oGameController.portrait=sprite;
	for (var i=2;i<2+choicecount;i++) ds_list_add(oGameController.choicelist,argument[i]);
	for (var i=2+choicecount;i<argument_count;i++) ds_list_add(oGameController.textlist,argument[i]);
	oGameController.dialogue=true;
}