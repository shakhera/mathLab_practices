%Jacobi_Method
%2x1+x2+x3=5
%3x1+5x2+2x2+15
%2x1+x2+4x3=8

clc
close all
clear all
error=1;
x1=0;
x2=0;
x3=0;
for i=1:1:10000
    a=(5-x2-x3)/2;
    b=(15-3*x1-2*x3)/5;
    c=(8-2*x1-x2)/4;
    er1=abs((a-x1)/a)*100;
    er2=abs((b-x2)/b)*100;
    er3=abs((c-x3)/c)*100;
    
     if(er1<=error && er2<=error && er3<=error )
        break;
    end
    
    x1=a;
    x2=b;
    x3=c;
end
iteration = i
value =a
value =b
value =c