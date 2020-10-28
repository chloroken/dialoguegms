
if global.dialogue{
	global.choice=0;
	
	// Get current dialogue string from 'textlist'
	var wholestring=ds_list_find_value(global.textlist,0);
	var stringlength=string_length(wholestring);			
		
	// Get mouse coordinates
	var mousex=device_mouse_x_to_gui(0);
	var mousey=device_mouse_y_to_gui(0);
	
	// If player clicks in dialogue area
	if mouse_check_button_pressed(PROCEED)&&mousey>BBOXTOP{
		
		// If mouse is over choices, choices exist, only one dialogue page remains
		var choicecount=ds_list_size(global.choicelist);
		var textcount=ds_list_size(global.textlist);
		if mousex>BBOXCHOICE&&choicecount&&textcount==1{
				
			// Look through 'global.choicelist'
			for (var i=0;i<choicecount;i++){
					
				// If mouse is over a choice
				if mousey>BBOXTOP+BORDER&&mousey<BBOXTOP+(i+1)/choicecount*(BBOXBOT-BBOXTOP){
						
					// Set global.choice to communicate with calling object
					global.choice=i+1;
						
					// Output and cleanup
					global.dialogue=false;
					global.icon=noone;
					ds_list_clear(global.textlist);
					ds_list_clear(global.choicelist);
					break;
				}
			}
		}
		
		// If text is still rolling out, instantly finish it
		if characters<stringlength characters=stringlength;
		
		// If text is finished rolling out, go to next dialogue page
		else{
			ds_list_delete(global.textlist,0);
			characters=0;
		}
	}
		
	// Scroll out characters in current global.dialogue page
	if characters<stringlength characters=characters+charsdrawnperframe;
	
	// Chop global.dialogue off at 'characters'
	chopped=string_copy(wholestring,1,characters);
}
else characters=0;