// Deliver confetti (demonstrates ability to communicate choice back to calling object)
if confettiready&&global.choice{
	confettiready=false;
	for (var i=0;i<1000;i++){
		var confetti=instance_create_depth(x,y,0,oConfetti);
		with confetti{image_index=global.choice-1;}
	}
}

// This object's dialogue sent via script 'setDialogue'
var mx=device_mouse_x_to_gui(0),my=device_mouse_y_to_gui(0);
if point_in_circle(mx,my,x,y,64)&&mouse_check_button_pressed(PROCEED){	
	confettiready=true;
	setDialogue(
		sprite_index,
		"Blue",
		"Red",
		"Green",
		"Yellow",
		"Hi. I'm a friendly plant person here to teach you how to use this dialogue system. To proceed, simply click down here on the dialogue box.",
		"This is a second message. See how it popped up and replaced the first message? Wow, so cool! Let's proceed to the last feature.",
		"Whoa, I get to choose something? My voice is going to be heard? This is amazing! Click on your favorite color to proceed."
	);
}
