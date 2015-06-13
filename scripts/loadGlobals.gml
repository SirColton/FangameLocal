ini_open('globals.ini');

global.leftbutton = ini_read_real("Controls","Left",vk_left);
global.rightbutton = ini_read_real("Controls","Right",vk_right);
global.upbutton = ini_read_real("Controls","Up",vk_up);
global.downbutton = ini_read_real("Controls","Down",vk_down);
global.jumpbutton = ini_read_real("Controls","Jump",vk_shift);
global.shotbutton = ini_read_real("Controls","Shoot",ord('Z'));
global.restartbutton = ini_read_real("Controls","Restart",ord('R'));
global.skipbutton = ini_read_real("Controls","Skip",ord('S'));

global.isMusicOn = ini_read_real("Options","Music",true);
global.isFullscreen = ini_read_real("Options","Fullscreen",false);
global.bloodLevel = ini_read_real("Options","Blood",3);
global.guiPosition = ini_read_real("Options","GUIPosition",2);
global.guiDelay = ini_read_real("Options","GUIDelay",3);

ini_close();