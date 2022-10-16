include <parametros.scad>
include <boltsos_0.4.1/BOLTS.scad>


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
		translate([dist_orificios/2,dist_orificios,0]) cylinder(25, d = 16);
		translate([dist_orificios/2,dist_orificios,24]) cylinder(1, d = 17);
	}
    for(i = [0 : 1]) 
	{
        translate([i*dist_orificios, 0, -1]) cylinder(10, d = diam_parafuso + 0.5);
    }
	translate([dist_orificios/2,dist_orificios,-1]) cylinder(27, d = 12);
//	translate([-dist_orificios/2, dist_orificios*0.95,  -1]) cube([22, 20, 27]);
	hull(){
	translate([dist_orificios*0.5,18.5,14]) rotate([90,0,0]) ISO4032("M3"); // orificio para "cravar" uma porca M3 para depois aparfusar e prender a caneta (será preciso furar o centro com um berbequim)
	}
}




