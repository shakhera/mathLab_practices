clear all;
close all;
clc;
fs=100;
t=0: 1/fs:1;
bit=[1 1 0 1 0 0 1];
nbit=[];
Time=[];
Dig_Sig=[];
k=1;
for i=1: 1 : length(bit)
    if(bit(i)==1)
        nbit(k)=1;
        nbit(k+1)=-1;
    end
    if(bit(i)==0)
        nbit(k)=-1;
        nbit(k+1)=1;
    end
    k=k+2;
end
for i=1: 1 : length(nbit)
    Dig_Sig=[Dig_Sig (nbit(i)==1)*...
        ones(1,length(t)) + (nbit(i)==-1)*-ones(1,length(t))];
    Time=[Time t]; t=t+1;
end
subplot(1,1,1);
plot(Time,Dig_Sig, 'black','LineWidth',2.5);
axis([ 0 Time(end) -1.5 1.5]);
grid on;
xlabel('Time(t)');
ylabel('Amplitude');
title(['Manchester [ ' num2str(bit) ' ]']);