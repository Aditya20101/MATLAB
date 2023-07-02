% Delta -- min. step size. This will be multiplied 2nX if required
% sig_in -- the signal input, should be a vector
% td -- the original sampling period of the input signal, sig_in
% ts -- the required sampling period for ADM output. Note that it
% should be an integral multiple of the input signal's period.
% If not, it will be rounded up to the nearest integer.
% output: ADMout
clc;
clear all;
N=3;
td=2*pi/100;
t=0:td:2*pi;
ts=N*td;
A=20;
sig_in=A*sin(t);
Delta=2;
 if (round(ts/td) >= 2)
 Nfac = round(ts/td); %Nearest integer
 xsig = downsample(sig_in,Nfac);
 Lxsig = length(xsig);
 Lsig_in = length(sig_in);
 
 ADMout = zeros(Lsig_in); %Initialising output
 
 cnt1 = 0; %Counters for no. of previous consecutively increasing 
 cnt2 = 0; %steps
 sum1 = 0;
 for i=1:Lxsig
 
 if (xsig(i) == sum1)
 elseif (xsig(i) > sum1)
 if (cnt1 < 2)
 sum1 = sum1 + Delta; %Step up by Delta, same as in DM
 elseif (cnt1 == 2)
 sum1 = sum1 + 2*Delta; %Double the step size after
 %first two increase
 elseif (cnt1 == 3)
 sum1 = sum1 + 4*Delta; %Double step size
 else
 sum1 = sum1 + 8*Delta; %Still double and then stop
 %doubling thereon
 end
 if (sum1 < xsig(i))
 cnt1 = cnt1 + 1;
 else
 cnt1 = 0;
 end
 else
 if (cnt2 < 2)
 sum1 = sum1 - Delta;
 elseif (cnt2 == 2)
 sum1 = sum1 - 2*Delta;
 elseif (cnt2 == 3)
 sum1 = sum1 - 4*Delta;
 else
 sum1 = sum1 - 8*Delta;
 end
 if (sum1 > xsig(i))
 cnt2 = cnt2 + 1;
 else
 cnt2 = 0;
 end
 end
 ADMout(((i-1)*Nfac + 1):(i*Nfac)) = sum1;
 end
 end
 
plot(t,sig_in)
hold on
plot(t,ADMout(:,1))
xlabel('Time')
ylabel('Amplitude')
legend('Original signal','Adaptive delta modulated signal')
%end