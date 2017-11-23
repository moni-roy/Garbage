N = 3; % here N = 3
[w1, w2]= meshgrid(-8:0.5:8);
%grid lines lies between -8 to 8 with intervals of .5
z = (0.5)*(w1.^2 + w2.^2) + w1.*w2*cos(2*pi/N) + 2*w2*sin(2*pi/N)+2;
figure(1)
mesh(z); %mesh plot of Z
title('Mesh Plot')
figure(2)
contour(z); %contour plot og Z
title('Contour plot')
y = min(z);
emin = min(y) % minimum value of error
