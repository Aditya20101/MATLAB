% pulse amplitude modulation
close all
clear all
clc
fm = 1000;
fc = 10000;
fs = 100*fc;
t = 0:1/fs:4/fm;
m = cos(2*pi*fm*t);
c = 0.5*square(2*pi*fc*t) + 0.5;
mo = m.*c;
%Modulation
subplot (4,1,1);
plot(t,m);
xlabel('Time->'); ylabel('Amplitude -->');
title('Message Signal');
subplot (4,1,2);
plot(t,c);
xlabel('Time->');
ylabel('Amplitude ->'); 
title('Pulse train');
subplot (4,1,3);
plot(t,mo);
xlabel('Time->');
ylabel('Amplitude ->');
title('PAM Signal');
% demodulation of PAM Signal
de = mo.*c;
filter = fir1(200, fm/fs, 'low');
demo=conv(filter,de);
t1 = 0:1/(length(demo)-1):1;
subplot (4,1,4);
plot (t1, 2*demo);
xlabel('Time->');
ylabel('Amplitude->');
title('Demodulated Signal');
