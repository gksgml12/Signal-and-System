% signal defined in part (i)
t1 =-1:0.01:2 ;
x1 = cos(3*pi*t1/4+pi/8) ;
plot(t1, x1), grid on;
xlabel('t');
ylabel('x1(t)');
title('cos(3\pi t/4 + \pi/8)');