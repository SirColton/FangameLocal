//musicFunctions script
//Called by world.room_start
//Sets up the BGM for the current room

var nbgm;

switch (room) {

//you add rooms here; rooms that have the same song can be grouped like this
case rTitle:
case rMenu:
case rMenu2:
case rMenu3:
case rOption:
case rOption2:
case rStage01:
    nbgm = bgmStage01;
    break; //Always put a break statement at the end of the group!

//here's an example of a separate group
case rStage02:
    nbgm = bgmStage02;
    break;
    
//you can leave this section alone
default:
    //show a message if there's no song for this room
    //note: please don't let this message pop up after you release your game!
    //always set a BGM for each room!
    show_message("You forgot to put a BGM for this room!");
    exit;
}



//Leave this alone - this stops the old BGM and starts the new one
if global.isMusicOn = true {
    if (global._bgm != nbgm) {
        audio_stop_sound(global._bgm);
        global._bgm = nbgm;
        audio_play_sound(global._bgm,0,1);
    }
} else {
    if global._bgm != 0 {
        audio_stop_sound(global._bgm);
        global._bgm = 0;
    }
}