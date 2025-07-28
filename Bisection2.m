clc
clear all
close all
a=1;
b=2;
c=0;
%f(x)=x^2-3,(1,2),error=1%,bisection
error=1;
for i=1:1:10000
    d=c;
    c=(a+b)/2;
    fa=a^2-3;
    fc=c^2-3;
    if(fa*fc<0)
        b=c;
    else
        a=c;
    end
    er=abs(c-d)/c*100;
    if(er<=error)
        break;
    end
end
    croot = c
    iteration = i