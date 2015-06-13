//converts a seconds value into a string displayed as "HH:MM:SS"

var strTime,t;
t=argument0;

strTime  = string(floor(t/3600))+":";    t = t mod 3600;
strTime += string(floor(t/ 600))    ;    t = t mod  600;
strTime += string(floor(t/  60))+":";    t = t mod   60;
strTime += string(floor(t/  10))    ;    t = t mod   10;
strTime += string(floor(t     ))    ;

return strTime;