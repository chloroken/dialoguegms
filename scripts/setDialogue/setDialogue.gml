/// @function setDialogue(type);
/// @arg type Set 'TEXT' or 'CHOICES'?
function setDialogue(type){
	#macro TEXT "text"
	#macro CHOICES "choices"
	if type=TEXT var list=global.textlist;
	else if type=CHOICES var list=global.choicelist;
	else exit;
	for (var i=1;i<argument_count;i++) ds_list_add(list,argument[i]);
	global.dialogue=true;
}