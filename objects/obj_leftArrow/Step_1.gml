event_inherited();

var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate

if (point_in_rectangle(mousex, mousey, xx, yy, xx + ww, yy + hh)) {
    // Check for mouse input
    if (mouse_check_button(mb_left)) {
        obj_Player.key_left = true;
    }
}