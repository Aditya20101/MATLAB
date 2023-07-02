clc; close all; clear all; 
n=input('enter the n value'); 
t=0:1:n; 
stem(t,t); 
xlabel('time');
ylabel('Amplitude');
title('unit ramp');
