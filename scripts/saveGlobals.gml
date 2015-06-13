ini_open('globals.ini')

ini_write_real("Controls","Left",global.leftbutton);
ini_write_real("Controls","Right",global.rightbutton);
ini_write_real("Controls","Up",global.upbutton);
ini_write_real("Controls","Down",global.downbutton);
ini_write_real("Controls","Jump",global.jumpbutton);
ini_write_real("Controls","Shoot",global.shotbutton);
ini_write_real("Controls","Restart",global.restartbutton);
ini_write_real("Controls","Skip",global.skipbutton);

ini_write_real("Options","Music",global.isMusicOn);
ini_write_real("Options","Fullscreen",global.isFullscreen);
ini_write_real("Options","Blood",global.bloodLevel);
ini_write_real("Options","GUIPosition",global.guiPosition);
ini_write_real("Options","GUIDelay",global.guiDelay);

ini_close();