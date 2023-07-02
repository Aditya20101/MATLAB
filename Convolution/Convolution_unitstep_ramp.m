t = [-5:0.01:5];
y=t;
for i= (1:1:1001)
    if (y(i) <= 0)   
        y(i)=0;
    end
end
ramp = y;
unit = [zeros(1,500),ones(1,501)];
z=conv(ramp,unit);
subplot(3,1,1); 
plot(t,ramp);
title('Ramp');
subplot(3,1,2);
plot(t,unit);
title('Unit step');
subplot(3,1,3);
plot(z);
title('Convolution');
