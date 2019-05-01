if (global.zoom<6) {
    global.zoom++;
} else {
    global.zoom=1;
}

switch(global.zoom) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        window_set_fullscreen(false)
        window_set_size(obj_game.ideal_width*global.zoom,obj_game.ideal_height*global.zoom);
        surface_resize(application_surface,obj_game.ideal_width*global.zoom,obj_game.ideal_height*global.zoom);
        obj_game.alarm[0]=1
    break;
    case 6:
        window_set_fullscreen(true)
    break;
}


