include <parametros.scad>
 
comprimento_barra = floor(comprimento_maximo / dist_orificios) * dist_orificios;

difference() {
    hull() {
        cylinder(altura, d = diam_parafuso + 5);
        translate([comprimento_barra, 0, 0])
            cylinder(altura, d = diam_parafuso + 5);
    }
    for(i = [0 : dist_orificios : comprimento_barra]) {
        translate([i, 0, -1])
            cylinder(altura+2, d = diam_parafuso + 0.5);
    }
}
