//Particle code generated by the Crystalline Particle System Tool
//http://www.iwannacommunity.com/forum/index.php?topic=1353.0

//------Particle System------
//run this code at the beginning of your game
//for example, in the world object's create event
global.psys = part_system_create();
part_system_depth(global.psys,-100); //Change the -100 to the depth that you want for your particles


//------Particle Type------
//run this code at the beginning of your game
//for example, in the world object's create event
global.ptyp_snow = part_type_create();
part_type_shape(global.ptyp_snow,pt_shape_snow);
part_type_color1(global.ptyp_snow,16777215);
part_type_alpha1(global.ptyp_snow,0.7000);
part_type_life(global.ptyp_snow,350.0000,350.0000);
part_type_size(global.ptyp_snow,0.1500,0.2300,-0.0002,0.0000);
part_type_speed(global.ptyp_snow,1.2000,1.7000,-0.0050,0.0043);
part_type_direction(global.ptyp_snow,240.0000,300.0000,0.0000,2.0000);
part_type_orientation(global.ptyp_snow,0.0000,360.0000,1.6787,-2.9454,0);
part_type_gravity(global.ptyp_snow,0.0100,270.0000);
part_type_blend(global.ptyp_snow,false);