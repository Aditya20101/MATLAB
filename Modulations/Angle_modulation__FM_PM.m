clc;
fs = 8000; 
fm=10;
fc = 200; 
t=(0:0.2*fs)/fs;
Am = 1; 
Ac = 1;
kf = input('Frequency Sensitivity(kf) = '); 
kp = input('Phase Sensitivity(kp) = '); 
% Take kf=2 and kp=10
Wm =2*pi*fm;
m = Am*cos(Wm*t);
subplot(2,2,1);
plot(t,m); 
title('Message Input Signal');
xlabel('Time --->');
ylabel('Amplitude --->')
Wc= 2*pi*fc;
c = Ac*cos(Wc*t);
subplot(2,2,2);

plot(t,c);
title('Carrier Signal'); 
xlabel('Time --->');
ylabel('Amplitude --->');
n=cumsum(m)/max(cumsum(m));
s_fm = Ac*cos(Wc*t+2*pi*kf*n);
subplot(2,2,3);
plot(t,s_fm); 
hold on
title('Frequency Modulated Signal'); 
xlabel('Time --->');
ylabel('Amplitude --->')
s_pm = Ac*cos(Wc*t+m.*kp );
subplot(2,2,4);
plot(t,s_pm);
title('Phase Modulated Signal'); 
xlabel('Time --->');
ylabel('Amplitude --->')