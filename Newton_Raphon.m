clc;
clear all;
close all;
x=0;
%f(x)=x^2-3*x+2,x=0,error=1%,newton_raphon
error=1;


for i=1:1:10000
d=x;
f=x^2-3*x+2;
df=2*x-3;
x=d-f/df;
er=abs((x-d)/x)*100;
    if(er<=error)
        break;

    end
end
croot=x
iteration=i