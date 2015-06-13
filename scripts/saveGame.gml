var f,n;

dyingSave = argument0

n=EXECUTABLE_DIRECTORY + 'save' + string(global.savenum);

if (FS_file_exists(n)) {
    f=FS_file_bin_open(n,2);
} else {
    f=FS_file_bin_open(n,1);
}

FS_file_bin_write_dword(f,global.death);
FS_file_bin_write_dword(f,global.time);
if (!dyingSave) { //only save death,time for dying save
    FS_file_bin_write_byte(f,global.difficulty);
    FS_file_bin_write_dword(f,room);
    FS_file_bin_write_dword(f,round(x));
    FS_file_bin_write_dword(f,round(y));
    FS_file_bin_write_byte(f,player.image_xscale+1); //+1 so -1=0, 1=2; bytes have no sign
}
FS_file_bin_close(f);