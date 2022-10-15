include <parametros.scad>

difference() {
	union(){
		cylinder(6, d = 80, center = true);
		cylinder(12, d = 20);	
		}
	
	cube([3, 5, 500], center = true);
    for(i = [15 : 3 : 35]) {
        rotate(i * 15)
            translate([i, 0, 0])
            cylinder(10, d = diam_parafuso, center = true);
    }
	
	translate([0,0,7]) rotate_extrude() translate([10,0,0]) circle(d=4);
}
