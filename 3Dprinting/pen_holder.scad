include <parametros.scad>

difference() {
union(){
    hull() {
        cylinder(5, d = diam_parafuso + 5);
        translate([dist_orificios*2, diam_orificios, 0])
            cylinder(5, d = diam_parafuso + 5);
    }
		translate([dist_orificios*2,0,0]) cylinder(20, d = 12);
	}
    for(i = [0 : 1]) {
        translate([i*dist_orificios, 0, -1])
            cylinder(10, d = diam_parafuso + 0.5);
    }
	translate([dist_orificios*2,0,-1]) cylinder(22, d = 8);
}



