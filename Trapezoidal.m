
clc;
close all;
clear all;

f = @(x) ( x.^3 + 1)
a = input('lower limit : ');
b = input('upper limit : ');
exact_ans = quad(f,a,b);
exact_ans
I = (b-a)/2*(f(a)+f(b));
I
error = abs( exact_ans-I);
error