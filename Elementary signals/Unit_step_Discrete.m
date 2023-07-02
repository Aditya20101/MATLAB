clc; close all; clear all; 
n=input('enter the n value');
t=0:1:n-1; 
y=ones(1,n); 
stem(t,y); 
xlabel('time');
ylabel('Amplitude');
title('unit step'); 
