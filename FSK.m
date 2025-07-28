%Frequency Shift Keying matlab code
clear all;
close all;
clc;

f1=1;
f2=3;
t=0: 0.001 : 1;
bit=[1 0 1 0 0 0 1 1 1 0 1 1];
time=[];
FSK_Signal=[];
for i=1:1: length(bit)
    FSK_Signal=[FSK_Signal (bit(i)==0)*sin(2*pi*f1*t)...
        + (bit(i)==1)*sin(2*pi*f2*t)];
    time=[time t];
    t=t +1;
end
plot(time,FSK_Signal,'LineWidth',2.5);
axis([0 time(end) -1.5 1.5]);
xlabel('Time(t)');
title(['FSK(Frequency Shift Keying) form [ ' num2str(bit) ' ]']);
ylabel('Amplitude');
grid on;