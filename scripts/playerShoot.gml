if (instance_number(bullet) < 4) {
    instance_create(x,y,bullet);
    audio_play_sound(sndShoot,0,0);
}