%%Yichen Lu 
%%luy191
%%400247938
clear;
clc;
K=8.9875e+9;%the value of (1/4*pi*epsilon 0)
q=1.602e-19;%the value of Q
range = 0:0.05:2;
[x,y] = meshgrid(range,range);
%The four expressions for the potentials
V1 = (K*q)./sqrt((x-1).^2+(y-1).^2+0.1);
V2 = -(K*q)./sqrt((x+1).^2+(y-1).^2+0.1);
V3 = (K*q)./sqrt((x+1).^2+(y+1).^2+0.1);
V4 = -(K*q)./sqrt((x-1).^2+(y+1).^2+0.1);
%The expression for the Electric field
[E_x, E_y] = gradient(V1+V2+V3+V4);
sx=[linspace(0,2,20),linspace(2,2,20),linspace(0,2,20),linspace(0,0,20)];
sy=[linspace(2,2,20),linspace(0,2,20),linspace(0,0,20),linspace(0,2,20)];
hold on;
streamline(x,y,E_x,E_y,sx,sy);
quiver(x,y,E_x,E_y);
hold off
title("Yichen Lu,400247938")












































































































































































































































































































































































































