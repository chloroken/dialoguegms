#region global.dialogue system
if global.dialogue{

	global.choice=0;
		
	// Get 'whole' string from 'global.textlist' list
	var whole=ds_list_find_value(global.textlist,0);
	var stringlength=string_length(whole);			
		
	// Get mouse coordinates
	var mousex=device_mouse_x_to_gui(0);
	var mousey=device_mouse_y_to_gui(0);
	
	// If player clicks in dialogue area
	if mouse_check_button_pressed(PROCEED)&&mousey>BBOXTOP{
		
		// If choices exist and only one dialogue page remains
		if ds_list_size(global.choicelist)&&ds_list_size(global.textlist)==1{
				
			// If mouse is in the choice box
			if mousex>BBOXCHOICE{	

				var choicecount=ds_list_size(global.choicelist);
				
				// Look through 'global.choicelist'
				for (var i=0;i<choicecount;i++){
					
					// If mouse is over a choice
					if mousey>BBOXTOP+BORDER&&mousey<BBOXTOP+(i+1)/choicecount*(BBOXBOT-BBOXTOP){
						
						// Get that choice's string
						var choice=ds_list_find_value(global.choicelist,i);
							
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
		}
		
		// If still rolling text, instantly finish it
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
	chopped=string_copy(whole,1,characters);
}
else characters=0;
#endregion