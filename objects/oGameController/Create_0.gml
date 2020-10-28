#macro PROCEED mb_left
#macro BBOXLEFT display_get_gui_width()*0.2
#macro BBOXTEXT display_get_gui_width()*0.3
#macro BBOXCHOICE display_get_gui_width()*0.7
#macro BBOXRIGHT display_get_gui_width()*0.8
#macro BBOXTOP display_get_gui_height()*0.7
#macro BBOXBOT display_get_gui_height()*0.9
#macro PADDING 16
characters=0;
charsdrawnperframe=.5;
dialogue=false;
choice=noone;
portrait=noone;
textlist=ds_list_create();
choicelist=ds_list_create();