function R= R3(deg)
rad = deg*pi/180;
R=[cos(rad) sin(rad) 0;-sin(rad) cos(rad) 0;0 0 1];