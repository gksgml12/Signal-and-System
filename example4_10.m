% Example 4.10

close all, clear all, clc

Ts=pi/10000;Fs=1/Ts;
t=-2*pi:Ts:3*pi;
x1=cos(2*pi*t);
%x2=3+cos(4*t+pi/4)+cos(10*t-pi/6);
%x3=3+0.5*exp(j*pi/4+j*4*t)+0.5*exp(-j*pi/6)*exp(j*10*t);

plot(t/pi,x1),xlabel(' x \pi  [sec]'),title('cos and sin'),grid
%figure,plot(t/pi,x2),xlabel(' x \pi  [sec]'),title('cos')
%figure,plot(t/pi,x3),xlabel(' x \pi  [sec]'),,title('exp')


[X,f]=freqz(x1,1,10000,Fs);
figure,plot(f*pi,abs(X)),grid
xlabel('  / \pi  [Hz]'),axis([-5,5,0,inf])
figure,plot(f*pi,angle(X)),grid
xlabel('  / \pi  [Hz]'),axis([0,4,0,inf])