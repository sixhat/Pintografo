include <parametros.scad>
 
comprimento_barra = 70;

difference() {
    hull() {
        cylinder(altura, d = 8 + 5);
        translate([comprimento_barra, 0, 0])
            cylinder(altura, d = 8 + 5);
    }
    for(i = [0 :  7]) {
        translate([i * dist_orificios, 0, -1])
            cylinder(altura+2, d = i+1);
    }
}
