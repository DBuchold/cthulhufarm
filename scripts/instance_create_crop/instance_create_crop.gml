function instance_create_crop(argument0,argument1, argument2){
var inst =	instance_create_layer(argument0, argument1, "Instances", obj_crop);

with(inst) {
	cropType = argument2;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;
}