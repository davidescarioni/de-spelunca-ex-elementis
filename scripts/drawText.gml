var text = argument[0]

draw_set_colour(c_white);
draw_set_font(fnt_8bit);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

var ypos = view_hview[0]/2
var xpos = view_wview[0]/2

draw_text(xpos,ypos,text);
