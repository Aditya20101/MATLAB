% x = [3,11,7,0,-1,4,2];
% h = [2,3,0,-5,2,1];




% y =conv(x,h);
% 
% subplot(3,1,1)
% stem(x)
% % axis([0 12 ])
% hold on
% subplot(3,1,2)
% stem(h)
% hold on
% subplot(3,1,3)
% stem(y)
% hold on


n=[0 1 2 3]

x =[1 2 2 0];
h = [1 2 3 4];
c = conv(x,h)
cc =cconv(x,h,5)



subplot(4,1,1)
stem(n,x,'b','LineWidth',1.1)
title("x[n]");


subplot(4,1,2)
stem(n,h,'r','LineWidth',1.1)
title("h[n]");

subplot(4,1,3)
stem(c,'k','LineWidth',1.1)
title("Convolution");

subplot(4,1,4)
stem(cc,'g','LineWidth',1.1)
title("Five point Circular Convolution");



