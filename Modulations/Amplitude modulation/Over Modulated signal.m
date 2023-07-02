fs=8000; 
fm=20; % message signal frequency
fc=500; % carrier signal frequency
Am=1; % amplitude% amplitude message signal
Ac=1; % amplitude carrier signal
t=(0:0.2*fs)/fs;
m=Am*cos(2*pi*fm*t); % message signal
c=Ac*cos(2*pi*fc*t); % carrier signal
% u=ka*Am; % modulation index
u = 1.5;
s1=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % modulated signal


subplot(4,1,1);
plot(t,m);
title('Modulating or Message signal(fm=20Hz)');
xlabel("Time");
ylabel("Amplitude");


subplot(4,1,2);
plot(t,c);
xlabel("Time");
ylabel("Amplitude");
title('Carrier signal(fc=500Hz)');


subplot(4,1,3);
plot(t,s1);
xlabel("Time");
ylabel("Amplitude");
title('Over Modulated signal(ka.Am=1.5)');
r1= s1.*c;
[b, a] = butter(2,0.01,'low');
mr1= filter(b,a,r1);
mr1a=sqrt(mr1.*mr1);
subplot(4,1,4);
plot(t,mr1a);
xlabel("Time");
ylabel("Amplitude");
title('Demodulated Signal(ka.Am=1.5)');