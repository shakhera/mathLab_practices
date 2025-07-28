clc;
close all;
clear all;
%Forward difference
%Backward differenc
%Central difference
%Richardson extrapolation

%fx=e^x, x=0.5, h=0.5 , and r=0.5 , dfx=?
error=1;
x=0.5;
h=0.5;
r=0.5;
    a=x+h;
    b=x-h;
    c=x+r*h;
    d=x-r*h;
    
    fa=exp(a);
    fb=exp(b);
    fc=exp(c);
    fd=exp(d);
    
    %Forward difference
      ff=(fa-exp(x))/h;
      forward  = ff;
      
      %Backward differenc
      bf=(exp(x)-fb)/h;
      backward  = bf;
    
      %Central difference
      cf=(fa-fb)/(2*h);
      central  = cf;
    
    %Richardson extrapolation
   dh=(fa-fb)/(2*h);
   drh=(fc-fd)/(2*r*h);
   rf=(drh-r^2*dh)/(1-r^2);
   
   richardson  = rf