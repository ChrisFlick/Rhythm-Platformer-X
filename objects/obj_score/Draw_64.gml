/// @desc Draw Score

draw_set_font(font_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
draw_text(vx + 5, vy + 5, "SCORE" + string(score));