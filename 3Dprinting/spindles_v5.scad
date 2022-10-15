include <parametros.scad>

difference()
{
	union()
	{
		cylinder(12, d = 20);
		for(i = [15 : 3 : 35]) 
		{
			hull() 
			{
				cylinder(4, d = 12, center=true);
				rotate(i * 15) translate([i, 0, 0]) cylinder(4, d = 9, center = true);
			}
		}
	}
	for(i = [15 : 3 : 35]) {
		rotate(i * 15)
		translate([i, 0, 0])
		cylinder(8, d = diam_parafuso, center = true);
	}
	cube([3, 5, 500], center = true);
	translate([0,0,7]) rotate_extrude() translate([10,0,0]) circle(d=4);
}
