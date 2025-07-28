clc;
close all;
clear all;

%Simpsons 1/3 rule
sym x;
syms f(x);
f(x) = exp(x);
a = input('Enter the lower limit: ');
b = input('Enter the upper limit: ');
im = int(exp(x),a,b);
iexact = 2.3504;
sum = 0;
h = (b-a)/2;
n = input('');
for i=1:n-1
    x = a+(i*h);
    sum = sum+(4*f(x));
end
ir = (b-a)/6;
ip = double(abs(ir*(f(a)+sum+f(b))));
err = ((ip-iexact)/ip)*100;
ip
err
