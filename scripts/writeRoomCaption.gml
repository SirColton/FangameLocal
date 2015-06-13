var str;

str = global.roomCaptionDef;
str += " --- Death[" + string(global.death) + "]";
str += " Time[" + getTimeStr(global.time) + "]";

window_set_caption(str)