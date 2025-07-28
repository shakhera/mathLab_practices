clc
close all
clear all


d=input('inter the input value :');
for i=1:1:d
    x(i)=input('press x value : ');
end
for i=1:1:d
y(i)=input('press y value : ');
end
plot(x,y)
xs=0;
ys=0;
xys=0;
xxs=0;
for i=1:1:d
xs=xs+x(i);
ys=ys+y(i);
xys=xys+(x(i)*y(i));
xxs=xxs+x(i)*x(i);
end
hold on;
m=(d*xys-xs*ys)/(d*xxs-xs*xs);
c= (ys/d)-(m*(xs/d));
for i=1:1:d
   y1(i)=m*x(i)+c ;
end
plot(x,y)
plot(x,y1,'-->')
