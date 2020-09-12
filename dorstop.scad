side = 14;
//need to remove the space used for teh bend and the sides
lenght = 60-4 * side;

height = 9 * 1.61803398 * lenght ;

$fn  = 200;


module side(){
//translate([0,60,0])
//   rotate_extrude(angle=270, convexity=10)
//       translate([40, 0]) circle(10);
rotate_extrude(angle=90, convexity=10)
   translate([2 * side, 0]) square(side);
//translate([20,0,0]) 
//   rotate([90,0,0]) cylinder(r=10,h=80);
translate([2 * side,0,0])rotate([90,0,0])cube([side,side,height],false);
}

module horseShoe(){
side();
translate([-lenght,0,0])mirror([1,0,0])side();

translate([-lenght,2 * side,side])rotate([0,90,0])cube([side,side,lenght],false);
}

translate([lenght/2,0,0])horseShoe();

translate([0,3.2 * side,0])difference(){
cylinder(h=side/2, r=side/2, center=false);
cylinder(h = 2 * side, r=side/4, center=false);
}

//Measure to ensure it fits the door, change the value of h to the desired one
//translate([0,0,2*side])rotate([0,90,0])cylinder(h = 60, r=side/4, center=true);
