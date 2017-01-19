/// draw_text_outlined(x, y, str, color, outline_color, alpha, width);
var myTmpX, myTmpY, myStr, myColor, myOutline_color, myAlpha, myWidth, myPrecision;
myTmpX = argument[0];
myTmpY = argument[1];
myStr = argument[2];
myColor = c_white;
if(argument_count > 3){ myColor = argument[3]; }
myOutline_color = c_black;
if(argument_count > 4){ myOutline_color = argument[4]; }
myAlpha = 1;
if(argument_count > 5){ myAlpha = argument[5]; }
myWidth = 2;
if(argument_count > 6){ myWidth = argument[6]; }
myPrecision = 16; // Value between 1 and 360 : Higher the value, higher the precision.

myPrecision = median(1, myPrecision, 360);

draw_set_alpha(myAlpha);
draw_set_color(myOutline_color);
for (var i = 0; i <= 360; i += 360 / myPrecision){
  draw_text(myTmpX + sin(degtorad(i)) * myWidth, myTmpY + cos(degtorad(i)) * myWidth, myStr);
}

draw_set_color(myColor);
draw_text(myTmpX, myTmpY, myStr);
