clc;
clear all;
close all;
x1=4;
x2=2;
%f(x)=x^2-4*x+10,x1=4,x2=2,error=1%,secant_method
error=1;


for i=1:1:10000

f1=x1^2-4*x1-10;
f2=x2^2-4*x2-10;
x3 = x2-((f2*(x2-x1))/(f2-f1));
er=abs((x3-x2)/x3)*100;
    if(er<=error)
        break;
    end
x2=x3;

end
croot=x3
iteration=i