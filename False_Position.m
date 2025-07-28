clc;
clear all;
close all;
a=1;
b=3;
c=0;
%f(x)=(0.8/x)-0.3,(1,3),error=1%,false_position
error=1;
for i=1:1:10000
    d=c;
    fa=(0.8/a)-0.3;
    fb=(0.8/b)-0.3;
    c=(b-((fb*(a-b))/(fa-fb)));
    fc=(0.8/c)-0.3;
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