$fn = 64;


difference() {
    cylinder(6, d = 80, center = true);
    cube([3, 5, 6], center = true);
    for(i = [15 : 3 : 35]) {
        rotate(i * 15)
            translate([i, 0, 0])
            cylinder(10, d = 4, center = true);
    }
}


difference() {
    union() {
        hull() {
            for(i = [15 : 3 : 35]) {
                rotate(i * 15)
                    translate([i, 0, 0])
                    cylinder(6, d = 8, center = true);
            }
        }
        translate([0, 0, -3])
            cylinder(10, d = 8);
    }
    cube([3, 5, 16], center = true);
    for(i = [15 : 3 : 35]) {
        rotate(i * 15)
            translate([i, 0, 0])
            cylinder(8, d = 4, center = true);
    }
    for(i = [10 : 5 : 40]) {
        rotate(i * 12 + 10)
            translate([i / 2, 0, 0])
            cylinder(8, d = i / 4, center = true);
    }

}

difference() {
    union() {
        cylinder(10, d = 20);

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
                    cylinder(8, d = 4, center = true);
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
    cube([3, 5, 50], center = true);
}