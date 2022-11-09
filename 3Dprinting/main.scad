include <parametros.scad>
include <pen_holder_02.scad>
include <arms.scad>

union(){
 pen_holder();
 braco(200, 3.2, 10, 3);
}

//braco(180, 3.2, 10, 3);