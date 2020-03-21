X=12; 
Y=37 ; 
$fn=90;

difference(){
Clock_Face();
    translate([0, 0, 1] )
Clock_Face_Numbers(X,Y);}

module Clock_Face_Dots(X,Y)   {
    
  Sec = 5 ;
    
for (i = [1:1:60 ]) { 
    
    Clock_Face= 6 ;
    
rotate([0,0,Clock_Face*i])  translate([0, Y-8,4] )sphere(1, $fn=7);         
}}

module Clock_Face()  {
    
 H=4; 
    
 color("white")
    
difference(){
translate([0, 0, H/2] )
    cylinder(h=H, r1=Y+8, r2=Y+8, center=true);
translate([0, 0,H/2 -.1] )
    cylinder(h=H+2, r1=2 , r2=2 , center=true);
     Clock_Face_Dots(X,Y); 
       
}}

module Clock_Face_Numbers(X,Y)  {
for (i = [1:1:X ]) {  
    
    Clock_Face=360/X ;
    
rotate([0,0, -Clock_Face*i]){ Numbers(X,i);  translate([0, Y-8,3] )sphere(2, $fn=10);         
}}}

module Numbers(X,i) {
linear_extrude(5)  { 

translate([0, Y,0] )  text(str(i), halign = "center", valign = "center", $fn = 16 ); 
}}