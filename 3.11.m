% signal defined in part (i)
t =0:0.01:6 ;
x1 = exp(-t1+2) ;
subplot(3,1,1), plot(t, x1), grid on;
xlabel('t');
ylabel('x(t)');
title('exp(t-2)u(t-2)');
 
% signal defined in part (ii)
x2 = (5-t).*(t>=4).*(t<=5);
subplot(3,1,2), plot(t, x2), grid on;
xlabel('t');
ylabel('h(t)');
title('h(t)');
 
% signal defined in part (iii)
x3 = conv(x1,x2);
t =0:0.01:12 ;
subplot(3,1,3), plot(t, x3), grid on
xlabel('t');
ylabel('y(t)');
title('x(t)*h(t)');

