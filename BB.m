clc;
close all;
clear all;

%heuns Method
h = input('Enter the step size: ');
x = 1:h:2;
y = zeros(size(x));
y(1) = 2;
n= numel(y);
for i=1:n-1
    m1 = (2*y(i))/x(i)
    ye(i+1) = y(i)+(m1*h)
    m2 = (2*ye(i+1))/(x(i+1))
    y(i+1) = y(i)+(((m1+m2)/2)*h)
end
y(i+1)
