//Localization Script
//Add a "keyword" in the outer switch, which is the base word you want to translate
//Then add a translation for each language you support.
//Don't forget the default cases, in the event you don't have a translation you can just return the keyword

switch (argument0) {
case "Back":
    switch (global.language) {
    case la_en: return "Back";
    case la_jp: return "もどる";
    default: return argument0;
    }
case "Accept":
    switch (global.language) {
    case la_en: return "Accept";
    case la_jp: return "せってい";
    default: return argument0;
    }
}
