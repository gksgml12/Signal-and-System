w = -5:0.001:5;
%
% P5.20(a)
H = 1./((j*w).^3+6*(j*w).^2+11*(j*w)+6);
subplot(5,2,1)
plot(w,abs(H)); grid on;
xlabel('\omega (radians/s)');
ylabel('P5.20(a): |H_1(\omega)|'); axis tight
subplot(5,2,2)
plot(w,angle(H)); grid on;
xlabel('\omega (radians/s)');
ylabel('P5.20(a): <H_1(\omega)'); axis tight
%
% P5.20(b)
H = 1./((j*w).^2+3*(j*w)+2);
subplot(5,2,3)
plot(w,abs(H)); grid on;
xlabel('\omega (radians/s)');
ylabel('P5.20(b): |H_2(\omega)|'); axis tight
subplot(5,2,4)
plot(w,angle(H)); grid on;
xlabel('\omega (radians/s)');
ylabel('P5.20(b): <H_2(\omega)');
axis tight