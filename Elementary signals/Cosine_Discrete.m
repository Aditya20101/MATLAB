% 
% n = 0:0.01:2*pi;
% x1 = sin(n);
% figure;
% plot(n,x1,'r-.','LineWidth',1.1);
% xlabel("time in seconds");
% ylabel("amplitude ");
% 

clc; close all; clear all;
t=0:0.05:6; 
y= cos(2*pi*t); 
stem(t,y); 
xlabel('Discrete time');
ylabel('Amplitude');
title('Cosinusoidal')
