clear all;
close all;
clc;

f1=25;
f2=5;
a=3; % amplitude
t=0:0.001:1;
x=a.*sin(2*pi*f1*t)+(a/2);
u=a/2.*square(2*pi*f2*t)+(a/2);
v=x.*u;
subplot(3,1,1)
plot(t,x)
xlabel('Time(t)');
title('Carrier signal')
ylabel('Amplitude');
grid on;

subplot(3,1,2)
plot(t,u)
xlabel('Time(t)');
title('Message pulses')
ylabel('Amplitude');
grid on;

subplot(3,1,3)
plot(t,v)
xlabel('Time(t)');
title('ASK signal')
ylabel('Amplitude');
grid on;

