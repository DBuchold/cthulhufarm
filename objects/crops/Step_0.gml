//check for planting mode
if(keyboard_check_pressed(ord("P"))) { planting = !planting}

if (planting) {
	mx = mouse_x;
	my = mouse_y;
if(mouse_wheel_up()) selectCrop += 1;
if(mouse_wheel_down()) selectCrop -= 1;

if(selectCrop > sprite_get_number(spr_crops_picked)-1) { selectCrop = 0};
else if (selectCrop < 0) {selectCrop = sprite_get_number(spr_crops_picked)-1;}

if(mouse_check_button_pressed(mb_left)) {
	instance_create_crop (mouse_x, mouse_y, selectCrop);}
}

if(instance_exists(obj_crop) and keyboard_check_pressed(ord("G"))){
	with(obj_crop){
		if(growthStageDuration < maxGrowthStage){
		daysOld += 1;
		growthStage = daysOld div growthStageDuration;
	}
	
	else {
		growthStage = maxGrowthStage;
		fullyGrown = true;
	}
}
}