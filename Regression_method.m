clc;
clear all;
close all;

d=input('enter the number of element n : ');
for i=1:1:d
    x(i)=input('enter the number of x value = ');
end;
for i=1:1:d
    y(i)=input('enter the number of y value = ');
end;
plot(x,y);
xsum=0;
ysum=0;
xysum=0;
xxsum=0;
xy=1;
for i=1:1:d
xsum=xsum+x(i);
ysum=ysum+y(i);
xysum = xysum + x(i)*y(i);
xxsum=xxsum+x(i)*x(i);
   
end;


hold on;
k=5;
l=xsum;
m=ysum;
n=xysum;
p=xxsum;
t1=(k*n)-(l*m);
t2=(k*p)-(l*l); 
a=(t1/t2);
a1=m-a*l;
a2=a1/k;

for i=1:1:d
    y1(i)=a*x(i)+a2;
%y1(i)=a*x(i)+a1;
end;
plot(x,y1,'->');
 