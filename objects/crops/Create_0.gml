//crop types + value

ds_crops_types = 0;

enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chili,
	gourd,
	corn
}

create_crop_type(3, 30); //tomato
create_crop_type(4, 40); //potato
create_crop_type(5, 50); //carrot
create_crop_type(3, 25); //artichoke
create_crop_type(2, 20); //chili
create_crop_type(1, 10); // gourd
create_crop_type(3, 35); //corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0;

cellSize = 32;
