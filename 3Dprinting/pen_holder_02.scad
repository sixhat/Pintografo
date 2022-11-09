include <parametros.scad>

module pen_holder(){
difference() 
{
	union()
	{
		hull() 
		{
			cylinder(5, d = diam_parafuso + 5);
			translate([dist_orificios*1, 0, 0]) cylinder(5, d = diam_parafuso + 5);
			translate([dist_orificios/2,dist_orificios,0]) cylinder(5, d = diam_parafuso + 5);
		}
		translate([dist_orificios/2,dist_orificios,0]) cylinder(25, d = 14);
		translate([dist_orificios/2,dist_orificios,24]) cylinder(1, d = 15);
	}
    for(i = [0 : 1]) 
	{
        translate([i*dist_orificios, 0, -1]) cylinder(10, d = diam_parafuso + 0.5);
    }
	translate([dist_orificios/2,dist_orificios,-1]) cylinder(27, d = 10);
	translate([-dist_orificios/2, dist_orificios*0.95,  -1]) cube([22, 20, 27]);
}
}
//pen_holder();

