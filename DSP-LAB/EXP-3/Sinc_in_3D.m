x = zeros(32);
x(12:17,12:17)=ones(6);
subplot(2,1,1);
title('3D rectangular pulse');
%mesh(x);
surf(x);
x = fft2(x);
x = fftshift(x);
%Dc value is at the corner of the array
%let us move it at thw middle
subplot(2,1,2);
%mesh(abs(x));
surf(abs(x));
title('3D sinc in frequency domain');