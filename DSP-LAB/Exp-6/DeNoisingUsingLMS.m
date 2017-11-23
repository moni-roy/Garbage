% LMS Filter
t = 1:0.0005:3*pi;
% t = (t/1024)*2*pi;
x = cos(2*pi*t); % original Signal
N = 31;
Wn = 0.5;
b = fir1(N,Wn); % FIR filter using window
% The cut-off frequency Wn must be between 0<Wn<1.0
n = 0.15*randn(1,length(t)); % noise signal
d = filter(b,1,x)+n; % Desired signal i.e Signal+noise
mu = 0.009; % LMS step size
ha  = adaptfilt.lms(32,mu);
[y1,e1] = filter(ha,n,d);
subplot(2,1,1)
plot(1:length(t),d,'r');
title('Desired');
xlabel('Time Index');
ylabel('Signal Value');
subplot(2,1,2)
plot(1:length(t),e1);
xlabel('Time Index');
ylabel('Signal Value');
