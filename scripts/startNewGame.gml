//Starts a new game
//If you need to initialize anything on game start (like global variables) do it here

//argument0: the difficulty of the new game

if(FS_file_exists(EXECUTABLE_DIRECTORY + 'save' + string(global.savenum)) == true){
    FS_file_delete(EXECUTABLE_DIRECTORY + 'save' + string(global.savenum));
}
global.difficulty = argument0;
room_goto(global.firstStage);