% 1)Modulated signal is product of message signal and carrier signal ,
% amplitude of modulated signal is given by Am*Ac.
% 2)Demodulated signal is product of modulated signal and carrier signal,
% amplitude of demodulated signal is Am*Ac*Ac.
% 3)To get this demodulated signal amplitude equal to message signal it needs to be divided by Ac*Ac

fs=8000;
fm=20;
fc=500;
Am=1;
Ac=1;
t=(0:0.2*fs)/fs;
m=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
subplot(4,2,1:2);
plot(t,m);
title('Modulating or Message signal(fm=20Hz)');
ylabel("Amplitude");
subplot(4,2,3:4);
plot(t,c);
ylabel("Amplitude");
title('Carrier signal(fc=500Hz)');
s1=Ac*Am*cos(2*pi*fm*t).*cos(2*pi*fc*t);
subplot(4,2,5:6);
plot(t,s1);
ylabel("Amplitude");
title('DSBSC Modulated Signal');
s3 = (s1.*c)/(Ac*Ac); 
[b,a] = butter(5,0.05);
s4 = filter(b,a,s3);
subplot(4,2,7:8);
plot(t,s4);
xlabel("Time");
ylabel("Amplitude");
title('DSBSC De-Modulated Signal');