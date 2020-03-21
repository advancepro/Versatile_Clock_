color("purple")
difference(){
   
import("midproject.stl");  

$fn = 70;

h = 60;
d = 60;
k = 60;
    
x = 15;
y = 90;
z = 15;

translate([-20,1,-1])rotate([x,y,z])cylinder(h,d,k);   
    
translate([20,2,0])rotate([15,90,15])cylinder(15,5,5);
    
//translate([12,1,-1])rotate([15,90,15])cylinder(3,65,65);
    }
