/////////////////////////////////////////////////////////////
//for debug purposes; you can remove this when you release //
//it's togglable if you add a objDEBUG object to the game  //
if (global.godmode) exit;
/////////////////////////////////////////////////////////////

instance_create(x,y,bloodEmitter);

if (instance_exists(player)) {
    with (player) {
        instance_destroy();
    }
}

audio_play_sound(sndDeath,0,0);
instance_create(view_xview+400, view_yview+300, objGAMEOVER);


global.death+=1
writeRoomCaption()
saveGame(true) //Dying Save