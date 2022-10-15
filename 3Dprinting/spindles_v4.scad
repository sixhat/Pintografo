include <parametros.scad>

// Com Grande suporte inferior e assimétrica
difference() {
    union() {
        cylinder(12, d = 20);

        difference() {

            hull() {
                for(i = [15 : 3 : 35]) {
                    rotate(i * 15)
                        translate([i, 0, 0])
                        cylinder(6, d = 9, center = true);
                }
            }


            for(i = [15 : 3 : 35]) {
                rotate(i * 15)
                    translate([i, 0, 0])
                    cylinder(8, d = diam_parafuso, center = true);
            }

           hull() {
                for(i = [15 : 3 : 35]) {
                    rotate(i * 15)
                        translate([i - 8, 0, 0])
                        cylinder(8, d = 8);
                }
            }


        }
    }
    cube([3, 5, 500], center = true);
	translate([0,0,7]) rotate_extrude() translate([10,0,0]) circle(d=4);
}
