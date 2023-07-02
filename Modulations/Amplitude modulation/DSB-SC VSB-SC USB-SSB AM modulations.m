clc;
fs = 4000;
t=(0:0.1*fs)/fs;
fm1=100; % frequency of first message signal
fm2=50; % frequency of second message signal
signal1 = sin(2*pi*fm1*t); % Message signal 1
signal2 = sin(2*pi*fm2*t); % Message signal 2
result_signal = signal1+signal2;
fc = 500;
initialPhase = 0;
subplot(3,2,1);
plot(t,result_signal);
title("Added Message Signals with fm1=100 HZ and fm2=50Hz");
xlabel("Time");
ylabel("Amplitude");
c=cos(2*pi*fc*t); % carrier signal
subplot(3,2,2);
plot(t,c);
title("Carrier Signal with fc=500 HZ");
xlabel("Time");
ylabel("Amplitude");
% DSB-SC Modulation
dsbsc = result_signal.*c;
subplot(3,2,3);
plot(t,dsbsc);
title("DSB-SC Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
% AM Modulation
mi=1; % Modulation index
am=c.*(1+(mi*result_signal));
subplot(3,2,4);
plot(t,am);
title("AM Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
% USBSSB-SC Modulation
upperSidebandSignal=ssbmod(result_signal,fc,fs,initialPhase,'upper');
subplot(3,2,5);
plot(t,upperSidebandSignal);
title("USB SSB Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
% VSB-SC Modulation
ld=length(dsbsc);
f=linspace(-fs/2,fs/2,ld);
DSB_SC=fftshift(fft(dsbsc,ld)/ld); % DSB-SC in frequency domain
% bandpass Filter Frequencies
lf=fc-(0.25*fm);
uf=fc+fm;
filtered_signal=bandpass(DSB_SC, [lf uf], fs);
%vsbModSignal=ifft(filtered_signal);
subplot(3,2,6);
plot(t,filtered_signal);
title("VSB-SC Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
