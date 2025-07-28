
clear all;
close all;
clc;
t=0:0.01:1;
bit=[1 0 1 0 0 0 1 1 1 0 1 1];
time = [];
Digital_Signal = [];
for  i = 1: 1 : length(bit)
   Digital_Signal = [Digital_Signal (bit(i)==0)*zeros(1,length(t))+(bit(i)==1)*ones(1,length(t))];
   time = [time t];
   t = t+1;
         
end
subplot(1,1,1);
plot(time,Digital_Signal,'linewidth',2.5);
title(['Unipolar NRZ [ ' num2str(bit) ' ]']);
xlabel('Time(t)');
ylabel('Aplititude');
axis([0 time(end) -1.5 1.5]);
grid on;