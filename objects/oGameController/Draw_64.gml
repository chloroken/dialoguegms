if global.dialogue{
	
	// Draw speaker icon
	draw_roundrect_color(BBOXLEFT,BBOXTOP,BBOXTEXT,BBOXBOT,c_red,c_yellow,true);
	draw_sprite(global.icon,0,BBOXLEFT+(BBOXTEXT-BBOXLEFT)/2,BBOXTOP+(BBOXBOT-BBOXTOP)/2);
	
	// Draw dialogue box
	draw_set_color(c_gray);
	draw_set_alpha(0.5);
	if ds_list_size(global.choicelist)&&ds_list_size(global.textlist)==1 draw_roundrect_ext(BBOXTEXT,BBOXTOP,BBOXCHOICE,BBOXBOT,15,15,false);
	else draw_roundrect_ext(BBOXTEXT,BBOXTOP,BBOXRIGHT,BBOXBOT,15,15,false);
	
	// Draw dialogue text
	draw_set_font(fDialogueText);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if ds_list_size(global.choicelist)&&ds_list_size(global.textlist)==1 draw_text_ext(BBOXTEXT+BORDER,BBOXTOP+BORDER,chopped,string_height(ds_list_find_value(global.textlist,0)),BBOXCHOICE-BBOXTEXT-BORDER-BORDER);
	else draw_text_ext(BBOXTEXT+BORDER,BBOXTOP+BORDER,chopped,string_height(ds_list_find_value(global.textlist,0)),BBOXRIGHT-BBOXTEXT-BORDER-BORDER);

	// Draw choices
	if ds_list_size(global.choicelist)&&ds_list_size(global.textlist)==1{
		draw_set_color(c_green);
		draw_roundrect_ext(BBOXCHOICE,BBOXTOP,BBOXRIGHT,BBOXBOT,15,15,false);
		draw_set_color(c_black);
		var choicecount=ds_list_size(global.choicelist);
		for (var i=0;i<choicecount;i++){
			var choicestring=ds_list_find_value(global.choicelist,i);
			draw_text(BBOXCHOICE+BORDER,BBOXTOP+BORDER+i/choicecount*(BBOXBOT-BBOXTOP),choicestring);
		}
	}
}