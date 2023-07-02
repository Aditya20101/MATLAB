clc;
close all;
clear all;
n=input('Enter n value for n-bit PCM system : ');
n1=input('Enter number of samples in a period : ');
L=2^n;
% Sampling Operation
x=0:2*pi/n1:4*pi; % n1 number of samples have to be selected
s=8*sin(x);
subplot(3,1,1);
plot(s);
title('Analog Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(3,1,2);
stem(s);grid on; title('Sampled Signal'); ylabel('Amplitude--->'); xlabel('Time--->');
% Quantization Process
vmax=8;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax; % level are between vmin and vmax with difference of del
code=vmin-(del/2):del:vmax+(del/2); % Contaion Quantized values
[ind,q]=quantiz(s,part,code); % Quantization process
% ind contain index number and q contain quantized values
l1=length(ind);
l2=length(q);
 
for i=1:l1
 if(ind(i)~=0) % To make index as binary decimal so started from 0 to N
 ind(i)=ind(i)-1;
 end
 i=i+1;
end 
 for i=1:l2
 if(q(i)==vmin-(del/2)) % To make quantize value in between the levels
 q(i)=vmin+(del/2);
 end
end 
subplot(3,1,3);
stem(q);grid on; % Display the Quantize values
title('Quantized Signal');
ylabel('Amplitude--->');
xlabel('Time--->');