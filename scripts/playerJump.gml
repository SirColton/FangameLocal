if (place_meeting(x, y+1.2, block) || onPlatform) {
    vspeed = -jump;
    audio_play_sound(sndJump,0,0);
    djump = true;
} else if (djump == true || place_meeting(x, y+1, objwater2) ) {
    vspeed = -jump2;
    audio_play_sound(sndDJump,0,0)
    djump = false;
}