//Initialize game objects
randomize();
room_goto_next();

debug = false;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

blackAlpha = 0;

spawnRoom = -1;
spawnX = 0;
spawnY = 0;

doTransition = false;