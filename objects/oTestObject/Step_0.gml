if confettiready&&global.choice{
	confettiready=false;
	switch global.choice{
		case 1:
			for (var i=0;i<1000;i++){
				var confetti=instance_create_depth(x,y,0,oConfetti);
				with confetti{image_index=0;}
			}
			break;
		case 2:
			for (var i=0;i<1000;i++){
				var confetti=instance_create_depth(x,y,0,oConfetti);
				with confetti{image_index=1;}
			}
			break;
		case 3:
			for (var i=0;i<1000;i++){
				var confetti=instance_create_depth(x,y,0,oConfetti);
				with confetti{image_index=2;}
			}
			break;
		case 4:
			for (var i=0;i<1000;i++){
				var confetti=instance_create_depth(x,y,0,oConfetti);
				with confetti{image_index=3;}
			}
			break;
	}
}
var mx=device_mouse_x_to_gui(0),my=device_mouse_y_to_gui(0);
if point_in_circle(mx,my,x,y,64)&&mouse_check_button_pressed(PROCEED){	
	setDialogue(TEXT,
		"Hi. I'm a friendly plant person here to teach you how to use this dialogue system. To proceed, simply click down here on the dialogue box.",
		"This is a second message. See how it popped up and replaced the first message? Wow, so cool! Let's proceed to the last feature.",
		"Whoa, I get to choose something? My voice is going to be heard? This is amazing! Click on your favorite color to proceed.");
	setDialogue(CHOICES,"Blue","Red","Green","Yellow");
	global.icon=sprite_index;
	confettiready=true;
}
