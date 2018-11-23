t4 =-10:0.01:10;
x4 =  exp(j*(5*t4+pi/4));
plot(t4, x4), grid on;
xlabel('t');
ylabel('x4(t)');
title('exp(j*(5*t+pi/4))');