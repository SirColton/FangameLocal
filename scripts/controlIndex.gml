keyIn = argument0;
switch(keyIn) {
// Special Keys
    case vk_space: return "SPACE";
    case vk_shift: return "SHIFT";
    case vk_control: return "CONTROL";
    case vk_alt: return "ALT";
    case vk_enter: return "ENTER";
    case vk_up: return "UP";
    case vk_down: return "DOWN";
    case vk_left: return "LEFT";
    case vk_right: return "RIGHT";
    case vk_backspace: return "BACKSPACE";
    case vk_tab: return "TAB";
    case vk_insert: return "INSERT";
    case vk_delete: return "DELETE";
    case vk_pageup: return "PAGE UP";
    case vk_pagedown: return "PAGE DOWN";
    case vk_home: return "HOME";
    case vk_end: return "END";
// Numpad 1    
    case 96: return "0";
    case 97: return "1";
    case 98: return "2";
    case 99: return "3";
    case 100: return "4";
    case 101: return "5";
    case 102: return "6";
    case 103: return "7";
    case 104: return "8";
    case 105: return "9";
// Numpad 2    
    case 106: return "*";
    case 107: return "+";
    case 109: return "-";
    case 110: return ".";
    case 111: return "/";
// Other Special Keys 1
    case 186: return ";";
    case 187: return "=";
    case 188: return ",";
    case 189: return "-";
    case 190: return ".";
    case 191: return "/";
    case 192: return "`";
// Other Special Keys 2
    case 219: return "[";
    case 220: return "\";
    case 221: return "]";
    case 222: return "'";
// Default Characters
    default: return chr(keyIn);
}