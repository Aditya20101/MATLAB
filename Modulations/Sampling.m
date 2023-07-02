clc;
close all;
L=input('Enter no. of quantization levels : ');

n=input('Enter number of samples in a period : ');
% Sampling Operation
x=0:2*pi/n:8*pi; % n1 number of samples have to be selected
Am=input('Enter the amplitude of the Sinusoidal signal:');
s=Am*sin(x);
subplot(3,1,1); % Take Am=6, L=8, n1=40
plot(s);grid on;
title('Analog Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(3,1,2);
stem(s);grid on; title('Sampled Signal'); ylabel('Amplitude--->'); xlabel('Time--->');