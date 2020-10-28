if dialogue{
	
	// Draw speaker icon
	draw_roundrect_color(BBOXLEFT,BBOXTOP,BBOXTEXT,BBOXBOT,c_red,c_yellow,true);
	draw_sprite(portrait,0,BBOXLEFT+(BBOXTEXT-BBOXLEFT)/2,BBOXTOP+(BBOXBOT-BBOXTOP)/2);
	
	// Draw dialogue box
	draw_set_color(c_gray);
	draw_set_alpha(0.5);
	if ds_list_size(choicelist)&&ds_list_size(textlist)==1 draw_roundrect_ext(BBOXTEXT,BBOXTOP,BBOXCHOICE,BBOXBOT,15,15,false);
	else draw_roundrect_ext(BBOXTEXT,BBOXTOP,BBOXRIGHT,BBOXBOT,15,15,false);
	
	// Draw dialogue text
	draw_set_color(c_white);
	draw_set_alpha(1);
	if ds_list_size(choicelist)&&ds_list_size(textlist)==1 draw_text_ext(BBOXTEXT+PADDING,BBOXTOP+PADDING,chopped,string_height(ds_list_find_value(textlist,0)),BBOXCHOICE-BBOXTEXT-PADDING-PADDING);
	else draw_text_ext(BBOXTEXT+PADDING,BBOXTOP+PADDING,chopped,string_height(ds_list_find_value(textlist,0)),BBOXRIGHT-BBOXTEXT-PADDING-PADDING);

	// Draw choices
	if ds_list_size(choicelist)&&ds_list_size(textlist)==1{
		draw_set_color(c_green);
		draw_roundrect_ext(BBOXCHOICE,BBOXTOP,BBOXRIGHT,BBOXBOT,15,15,false);
		draw_set_color(c_black);
		var choicecount=ds_list_size(choicelist);
		for (var i=0;i<choicecount;i++){
			var choicestring=ds_list_find_value(choicelist,i);
			draw_text(BBOXCHOICE+PADDING,BBOXTOP+PADDING+i/choicecount*(BBOXBOT-BBOXTOP),choicestring);
		}
	}
}