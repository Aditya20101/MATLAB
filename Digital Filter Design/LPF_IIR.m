% LPF IIR
%To plot magnitude and phase response of first order low pass IIR digital filters.

%a = 0.9
% b1 = [0.1 0.1];
% a1=[2 -1.8];
b1 = [0.05 0.05];
a1=[1 -0.9];

% %a = 0.6
% b1 = [0.2 0.2];
% a1=[1 -0.6];


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