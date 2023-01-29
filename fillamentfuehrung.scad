/*
Fillamentfuehrung-OpenSCAD by Sven Reddemann is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Fillamentfuehrung-OpenSCAD.
*/
module loch(){
    difference(){
        cylinder(h=10, r=14, center=true);
        rotate_extrude(convexity = 10) translate([14, 0, 0]) circle(r = 5, $fn = 128);
    }
}
module loecher(){
    hull(){
        translate([5,0,0]) cylinder(h=20, r=5, center=true);
        translate([0,0,0]) cylinder(h=20, r=3, center=true);
    }
}
difference(){
    translate([0,0,0]) cube([20,120,10], center=true);
    color("red") translate([0,-38,3]) cube([16,40,10], center=true);
    translate([0,-48,-5]) cylinder(h=15, r=4.2, center=true);
    translate([0,-28,-5]) cylinder(h=15, r=4.2, center=true);
    translate([-3,-5,0]) color("yellow") loecher();
    translate([3,7.5,0]) rotate([0,0,180]) color("yellow") loecher();
    translate([-3,20,0]) color("yellow") loecher();
    translate([3,50,0]) rotate([0,0,180]) color("yellow") loecher();
    translate([1,65,0]) rotate([0,0,-30]) color("yellow") loecher();
}
difference(){
    translate([9.9,74.5,0]) rotate([0,0,-30]) cube([20,45,10], center=true);
    translate([1,65,0]) rotate([0,0,-30]) color("yellow") loecher();
    translate([13.3,72.5,0]) rotate([0,0,150]) color("yellow") loecher();
    translate([14,86,0]) rotate([0,0,-30]) color("yellow") loecher();
    translate([28,90,0]) rotate([0,0,115.5]) color("yellow") loecher();
}

difference(){
    hull() {
        translate([25.55,93.58,0])  rotate([0,0,-67.5]) cube([20,20,10], center=true);
        translate([46,101.5,0]) rotate_extrude(convexity = 10) translate([14, 0, 0]) circle(r = 5, $fn = 128);
    }
    translate([46,101.5,0]) loch();
    translate([41,74,0]) rotate([10,45,0]) cube([40,40,2], center=true);
    translate([14,86,0]) rotate([0,0,-30]) color("yellow") loecher();
    translate([28,90,0]) rotate([0,0,115.5]) color("yellow") loecher();
}
difference(){
    hull(){
        translate([0,35,80])  rotate([90,0,0]) rotate_extrude(convexity = 10) translate([14, 0, 0]) circle(r = 5, $fn = 128);
        translate([0,35,37.5]) cube([20,10,65], center=true);
    }
    translate([0,35,80]) rotate([90,0,0]) loch();
    translate([-28.5,35,80]) rotate([45,0,0]) cube([40,40,2], center=true);
    translate([-3,35,15]) rotate([90,0,0]) color("yellow") loecher();
    translate([3,35,27.5]) rotate([90,180,0]) color("yellow") loecher();
    translate([-3,35,40]) rotate([90,0,0]) color("yellow") loecher();
    translate([3,35,52.2]) rotate([90,180,0]) color("yellow") loecher();
}
