/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-110;
y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-115;
global.inst.x=x+15
global.inst.y=y+25
global.questButton.x=x+60
global.questButton.y=y+25

if global.houseDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgHouse); i++) {
			var _arr = msgHouse[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else{
	instance_destroy(oTextbox)
	dialogOn =0
}

