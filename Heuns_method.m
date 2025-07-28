clc;
clear all;
close all;
%2y/x;
a = input('Enter the initial value of a:\n');
b= input (' Enter the initial value of b:\n');
h = input(' Enter step size h:\n');
x=a;
y=b;
for i= a : h : b
    
    y=zeros(size(x));
y(1)=2;
x=numel(y);
for 
    
    m1 = (2*y)/x;
    ye = y +(m1*h);
    x = x+ h;
    m2 = (2*ye)/(x+h);
    y = y +(((m1+m2)/2)*h);
   %x = x+ h;
    
end
 
y