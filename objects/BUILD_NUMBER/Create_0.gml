/// @Print build number

var BUILD_DATE = string(current_year);
BUILD_DATE += "-"
BUILD_DATE += string(current_month);
BUILD_DATE += string(current_day);
//"-" string(current_hour)  string(current_minute);


draw_set_color(c_red);
draw_text(x, y, GM_build_date);