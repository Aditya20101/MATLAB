clc;
clear all;
close all;
% ****************** Define transmitted signal *****************

x_inp = [1 0 1 0 0 1 0 1 0 0];   % Binary information as stream of bits (binary signal 0 or 1)
N = length(x_inp);
Tb = 0.0001;   %Data rate = 1MHz i.e., bit period (second)
disp('Binary Input Information at Transmitter: ');
disp(x_inp); 


% *************Represent input signal as digital signal *************
x_bit=[]; 
nb=100; % bbit/bit
for n=1:1:N  
 if x_inp(n)==1 
    x_bitt=ones(1,nb);
 else
    x_bitt=zeros(1,nb);
 end
 x_bit=[x_bit x_bitt];
end
t1=Tb/nb : Tb/nb : nb*N*(Tb/nb); % time of the signal 
f1 = figure(1);
set(f1,'color',[1 1 1]);
subplot(3,1,1);
plot(t1,x_bit,'lineWidth',2);grid on;
% axis([ 0 0.25*Tb*N -0.5 1.5]);
ylabel('Amplitude(volt)');
xlabel(' Time(sec)');
title('Input signal as digital signal');
% **************** Define ASK Modulation **********************
Ac=sqrt(2/Tb); % Amplitude of carrier signal
mc=4; % fc>>fs fc=mc*fs fs=1/Tb
fc=mc*(1/Tb); % carrier frequency for bit 1
fi1=0; % carrier phase for bit 1
t2=Tb/nb:Tb/nb:Tb; 
t2L=length(t2);
x_mod=[];
for (i=1:1:N)
 if (x_inp(i)==1)
 x_mod0=Ac*cos(2*pi*fc*t2+fi1);%modulation signal with carrier signal 1
 else
 x_mod0=zeros(1,100);%Ac*cos(2*pi*fc*t2+fi2);%modulation signal with carrier signal 2
 end
 x_mod=[x_mod x_mod0];
end
t3=Tb/nb:Tb/nb:Tb*N;
subplot(3,1,2);
plot(t3,x_mod);
% axis([ 0 0.25*Tb*N -200 200]);

xlabel('Time(sec)');
ylabel('Amplitude(volt)');
title('Signal of ASK modulation ');
% ***************** Transmitted signal x *************************
x=x_mod;
% **************** Channel model h and w ************************
h=1; % Fading 
w=300*randn(1,length(x)); % Noise
% ********************* Received signal y ************************
y=h.*x+w;
% **************** Define ASK Demodulation *********************
y_dem=[];
i=1;
for n=t2L:t2L:length(y)
 t=Tb/nb:Tb/nb:Tb;
 c=cos(2*pi*fc*t); % carrier signal 
 y_dem0=c.*y((n-(t2L-1)):n);
 t4=Tb/nb:Tb/nb:Tb;
 z=trapz(t4,y_dem0); % integration 
 store_z(i)=z;
 A_dem=round((2*z/Tb)); 
 store_A_dem(i)=A_dem;
 if(A_dem>Ac/2) % logic level = Ac/2
 A=1;
 else
 A=0;
 end
 y_dem=[y_dem A];
 i=i+1;
end
x_out=y_dem; % output signal;
% *************** Represent output signal as digital signal ***************
xx_bit=[];
for n=1:length(x_out)
 if x_out(n)==1
 xx_bitt=ones(1,nb);
 else 
 xx_bitt=zeros(1,nb);
 end
 xx_bit=[xx_bit xx_bitt];
end
t4=Tb/nb:Tb/nb:nb*length(x_out)*(Tb/nb);
subplot(3,1,3)
plot(t4,xx_bit,'LineWidth',2);grid on;
% axis([ 0 0.25*Tb*length(x_out) -0.5 1.5]);
ylabel('Amplitude(volt)');
xlabel(' Time(sec)');
title('Output signal as digital signal');