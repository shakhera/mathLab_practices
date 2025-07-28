clc
close all
clear all
%Forward difference
%Backward differenc
%Central difference


%fx=x^2, x=1, h=0.2 , dfx=?
error=1;
x=1;
h=0.2;
    a=x+h;
    b=x-h;
   % c=x+r*h;
   % d=x-r*h;
    
   % fa=a^2;
    %fb=b^2;
    
    %Forward difference
      ff=(a^2-x^2)/h;
      forward  = ff
      
      %Backward differenc
      bf=(x^2-b^2)/h;
      backward  = bf
    
      %Central difference
      cf=(a^2-b^2)/(2*h);
      central  = cf
   
   
