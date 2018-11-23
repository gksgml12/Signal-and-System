% Lecture Note Example p.22

close all, clear all, clc

Ts=1/5000;Fs=1/Ts;
fo=10;E=5;
wo=2*pi*fo;

t=-0.2:Ts:0.3;
s=E*sin(wo*t);
y=s.*(s>=0);

%plot(t,s),xlabel(' [sec]'),title('sine') 
%figure,plot(t,y),xlabel(' [sec]'),title('half-rectified') 
%figure,plot(t,s,t,y),xlabel(' [sec]'),legend('sine','half-rectified') 
 


[Y,f]=freqz(y,1,Fs,Fs);
figure,plot(f,abs(Y)),grid
xlabel(' [Hz]'),axis([0,200,0,inf]),title('Spectrum of half-rectified signal')
