base_height = 10;
top_height = 10;
wheel_rad = 10;
wheel_width = 3;
wheel_turn = 20;
body_roll = -5;
track = 40;

rotate([body_roll,0,0]){
scale([1.2,1,1])
{    
    //Cubo principal:
    cube([60,20,base_height],center=true);
    
    top_translation = base_height / 2 + top_height / 2;
    
    //Cubo superior:
    translate([0,0,top_translation])
        cube([30,20,top_height],center=true);
}}
//Rueda delantera izq:
translate([-20,-track/2,0])
    rotate([90,0,wheel_turn])
        cylinder(h = wheel_width, r = wheel_rad,center=true);

//Rueda delantera dcha:
translate([-20,track/2,0])
    rotate([90,0,wheel_turn])
        cylinder(h = wheel_width, r = wheel_rad,center=true);
    
//Rueda trasera izda:
translate([20,-track/2,0])
    rotate([90,0,0])
        cylinder(h = 3, r = wheel_rad,center=true);
    
//Rueda trasera dcha:
translate([20,track/2,0])
    rotate([90,0,0])
        cylinder(h = 3, r = wheel_rad,center=true);
    
//Eje delantero:
translate([20,0,0])
    rotate([90,0,0])
        cylinder(h = track,r = 2,center=true);

//Eje trasero:
translate([-20,0,0])
    rotate([90,0,0])
        cylinder(h = track,r = 2,center=true);