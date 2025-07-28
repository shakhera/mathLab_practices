%Gauss_Seidal_Method
%2x1+x2+x3=5
%3x1+5x2+2x2+15
%2x1+x2+4x3=8

clc;
close all;
clear all;
error=1;
x1=0;
x2=0;
x3=0;
for i=1:1:10000
    a=x1;
    b=x2;
    c=x3;
    x1=(5-x2-x3)/2;
    x2=(15-3*x1-2*x3)/5;
    x3=(8-2*x1-x2)/4;
    
    er1=abs((x1-a)/x1)*100;
    er2=abs((x2-b)/x2)*100;
    er3=abs((x3-c)/x3)*100;
    if(er1<=error && er2<=error && er3<=error )
        break;
    end
    a=x1;
    b=x2;
    c=x3;
end
iteration = i
X1 =x1
X2 =x2
X3 =x3