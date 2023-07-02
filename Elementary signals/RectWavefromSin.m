% Visualising Fourier Series

t=[-10:0.01:10]  ;
a=sin(t);
b=(1/3)*sin(3*t);
c=(1/5)*sin(5*t);
d=(1/7)*sin(7*t);
e=(1/9)*sin(9*t);
f=(1/11)*sin(11*t);
g=(1/13)*sin(13*t);
h=(1/15)*sin(15*t);
i=(1/17)*sin(17*t);
j=(1/19)*sin(19*t);
k=(1/21)*sin(21*t);
l=(1/23)*sin(23*t);



% plot(t,y,t,c,t,z);
plot(t ,c+ b+a+d+e+f+g+h+i+j+k+l);
