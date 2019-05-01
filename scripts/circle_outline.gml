/// draw_circle_outline(x,y,radius,color,outline_color,outline_thickness)
var xx=argument0,yy=argument1,rad=argument2,
c1=argument3,c2=argument4,sze=argument5;

draw_set_color(c2);
draw_circle(xx,yy,rad+sze,false);

draw_set_color(c1);
draw_circle(xx,yy,rad,false);

