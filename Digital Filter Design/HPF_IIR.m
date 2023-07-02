



% HPF IIR
%To plot magnitude and phase response of first order high pass IIR digital filters.

%a = 0.6

b1 = [0.8 -0.8];
a1=[1 -0.6];




w = 0:0.01:pi;
h1 = freqz(b1,a1,w);



subplot(3,1,1);
plot(w/pi,abs(h1));
xlabel("Normalized freq");
ylabel("Magnitude");
hold on;



subplot(3,1,2);
plot(w/pi,angle(h1));
xlabel("Normalized freq");
ylabel("Phase angle in radians");
hold on;



subplot(3,1,3);
plot(w/pi,20*log10(abs(h1)));
xlabel("Normalized freq");
ylabel("Magnitude in dB");
hold on;

