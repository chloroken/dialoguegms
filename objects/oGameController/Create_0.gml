#macro PROCEED mb_left
#macro BBOXLEFT display_get_gui_width()*0.2
#macro BBOXTEXT display_get_gui_width()*0.3
#macro BBOXCHOICE display_get_gui_width()*0.7
#macro BBOXRIGHT display_get_gui_width()*0.8
#macro BBOXTOP display_get_gui_height()*0.7
#macro BBOXBOT display_get_gui_height()*0.9
#macro BORDER 16
characters=0;
charsdrawnperframe=1;
global.dialogue=false;
global.choice=0;
global.icon=noone;
global.textlist=ds_list_create();
global.choicelist=ds_list_create();