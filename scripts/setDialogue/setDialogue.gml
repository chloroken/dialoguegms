/// @function setDialogue(sprite,choice1,choice2,choice3,choice4);
/// @arg sprite
function setDialogue(sprite){
	global.icon=sprite;
	for (var i=1;i<5;i++) ds_list_add(global.choicelist,argument[i]);
	for (var i=5;i<argument_count;i++) ds_list_add(global.textlist,argument[i]);
	global.dialogue=true;
}