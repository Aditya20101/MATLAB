clc; close all; clear all; 
n=input('the length of i/p frequency'); 
t=0:n 
a=input('enter the a value'); 
y=exp(a*t); 
stem(t,y); 
xlabel(‘Discrete time’);
ylabel('Magnitude'); 
title('Unit exponential');
