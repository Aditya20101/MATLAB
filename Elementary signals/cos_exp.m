b=2;
f=10;
a=60;
t=0:0.01:1;
 
y= (cos(2*pi*f*t)).*(a*exp(-b*t));
plot(t,y)
xlabel(' time');
ylabel('Amplitude');
title('Cos x exp');
