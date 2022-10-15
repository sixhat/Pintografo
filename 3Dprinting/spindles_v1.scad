include <parametros.scad>

difference() {
	union(){
		cylinder(altura, d = 80);
		// Cilindro para apoiar no stepper com folga de 3mm 
		// para as cabeças dos parafusos M2x20 . 
		// tipicamente o valor da altura da cabeça 
		// é de cerca de 66% do diametro pelo que 
		// colocando 100% dá para ter folga suficiente
		// https://eicac.co.uk/Bolts-Metric
		cylinder(2*altura+diam_parafuso, d = 20);
	}
	// buraco para o notch do stepper é 3mm x 5mm
	// https://www.mouser.com/datasheet/2/758/stepd-01-data-sheet-1143075.pdf
    cube([3, 5, 40*altura], center = true);
	
    for(i = [15 : diam_parafuso : 35]) {
        rotate(i * 16)
            translate([i, 0, 0])
            cylinder(2*altura, d = diam_parafuso+0.5, center=true);
    }
	translate([0,0,7]) rotate_extrude() translate([10,0,0]) circle(d=4);
}

