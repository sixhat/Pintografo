include <parametros.scad>

module
braco(comprimento = 10, d_orificio = 3, dist_orificio = 10, altura = 4)
{
    difference()
    {
        hull()
        {
            cylinder(altura, d = d_orificio + 5);
            translate([ comprimento, 0, 0 ])
                cylinder(altura, d = d_orificio + 5);
        }
        for (i = [0:dist_orificio:comprimento]) {
            translate([ i, 0, -1 ]) cylinder(altura + 2, d = d_orificio + 0.5);
        }
    }
}
for (i = [0:20:160]) {
    translate([ 0, i, 0 ]) braco(40 + i, 3, 10, 4);}

//braco(100, 3.2, 10, 4);