clc;
close all;
x=input('enter the 1st sequence: ');
h=input('enter the 2nd sequence: ');
y=conv(x,h);
figure;subplot(3,1,1);
stem(x);ylabel('Amplitude -->');
xlabel('(a) n -->');
subplot(3,1,2);
stem(h);ylabel('Amplitude -->');
xlabel('(b) n -->');
subplot(3,1,3);
stem(y);ylabel('Amplitude -->');
xlabel('(c) n -->');
disp('The resultant signal is');

% enter the 1st sequence: [1,2,3,6,5,4]
% enter the 2nd sequence: [6,5,4,1,2,3]
