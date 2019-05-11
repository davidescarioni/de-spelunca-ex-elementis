var pUp = argument[0]

switch (pUp)
   {
   case "ice":
       var backColour = make_colour_rgb(41, 173, 255);
       var title = load_string_json(global.language, "powerUp_iceTitle")
       var subtitle = load_string_json(global.language, "powerUp_iceText")
   break;
   case "fire":
       var backColour = make_colour_rgb(255, 0, 77);
       var title = load_string_json(global.language, "powerUp_fireTitle")
       var subtitle = load_string_json(global.language, "powerUp_fireText")
   break;
   case "rock":
       var backColour = make_colour_rgb(95, 87, 79);
       var title = load_string_json(global.language, "powerUp_rockTitle")
       var subtitle = load_string_json(global.language, "powerUp_rockText")
   break;
   case "thunder":
       var backColour = make_colour_rgb(255, 236, 39);
       var title = load_string_json(global.language, "powerUp_lightingTitle")
       var subtitle = load_string_json(global.language, "powerUp_lightingText")
   break;
   case "air":
       var backColour = make_colour_rgb(131, 118, 156);
       var title = load_string_json(global.language, "powerUp_airTitle")
       var subtitle = load_string_json(global.language, "powerUp_airText")
   break;
   }
   
draw_set_colour(backColour);
draw_rectangle(10,view_hview[0]/3-5,view_wview[0]-10,view_hview[0]/3 + 5, false)
draw_set_colour(c_white);
draw_set_font(fnt_8bit);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var xpos = view_wview[0]/2
var ypos = view_hview[0]/3 +1
draw_text_transformed(xpos, ypos, title, 0.35, 0.35, 0);
draw_text_transformed(xpos, ypos+20, subtitle, 0.20, 0.20, 0);
//instance_deactivate_all(1);


