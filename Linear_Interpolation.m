clc;
close all;
clear all;
%f(x)=sqrt(x),,x=2.5, using Linear Interpolation Method
clc;
x=2.5;
fx=sqrt(x);
x1=2;
x2=3;
fx1=sqrt(x1);
fx2=sqrt(x2);
fx3=fx1+(x-x1)*((fx2-fx1)/(x2-x1));
err=abs((fx3-fx)/fx3)*100;
Linear_interpolation_result=fx3
error=err