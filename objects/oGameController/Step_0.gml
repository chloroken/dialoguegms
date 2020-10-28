
if dialogue{
	
	choice=noone;
	var dialoguestring=ds_list_find_value(textlist,0);
	var stringlength=string_length(dialoguestring);			
	var mousex=device_mouse_x_to_gui(0);
	var mousey=device_mouse_y_to_gui(0);
	
	// If player clicks in dialogue area
	if mouse_check_button_pressed(PROCEED)&&mousey>BBOXTOP{
		
		// Select choice
		var choicecount=ds_list_size(choicelist);
		var textcount=ds_list_size(textlist);
		if mousex>BBOXCHOICE&&choicecount&&textcount==1{
			for (var i=0;i<choicecount;i++){
				if mousey>BBOXTOP+PADDING&&mousey<BBOXTOP+(i+1)/choicecount*(BBOXBOT-BBOXTOP){
					choice=i;
					dialogue=false;
					portrait=noone;
					characters=0;
					ds_list_clear(textlist);
					ds_list_clear(choicelist);
					break;
				}
			}
		}
		
		// Auto-complete durrent dialogue text
		if characters<stringlength characters=stringlength;
		
		// Proceed to next dialogue page
		else if textcount>1{
			ds_list_delete(textlist,0);
			characters=0;
		}
	}
		
	// Chop dialogue text to create rolling effect
	if characters<stringlength characters=characters+charsdrawnperframe;
	chopped=string_copy(dialoguestring,1,characters);
}
else characters=0;