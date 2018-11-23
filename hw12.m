% 05/29/2017 K.S.Bae
% ½Å½Ã HW#12 ... MATLAB


close all,clear all,clc
disp(' ')
x=[1 0 -1 1];
h=[1 0 -1];

disp('x=[1 0 -1 1];  h=[1 0 -1]; ')
disp(' ')
disp(' (1) X(z)=1-z^-2+z^-3  ')
disp(' (2) H(z)=1-z^-2 ')

y1=conv(x,h)
disp(' (3) Y(z)=1 - 2z^-2 + z^-3 + z^-4 - z^-5  ')
disp(' (4) y=[1 0 -2 1 1 -1]  ')
disp(' (5) y1=[1 0 -2 1 1 -1]  ')

% (6) N-point DFT, N=4 --> 0<=k<=3
N=4;
X=fft(x,N);
k=0:3;wk=(2*pi/N)*k;z=exp(j*wk);X1=1-z.^-2+z.^-3;
disp([' (6) X(k)= ', num2str(X) ] )
disp(' (6_) wk=(2*pi/N)*k , N=4,  0<=k<=3')
disp([' (6_) X(z)|z=exp(j*wk) = ', num2str(X1) ] )

% (7) N-point DFT, N=4 --> 0<=k<=3
H=fft(h,N);
k=0:3;wk=(2*pi/N)*k;z=exp(j*wk);H1=1-z.^-2;
disp([' (7) H(k)= ', num2str(H) ] )
disp(' (7_) wk=(2*pi/N)*k , N=4,  0<=k<=3')
disp([' (7_) H(z)|z=exp(j*wk) = ', num2str(H1) ] )

% (8)
Y_k=X.*H;
disp([' (8) Y(k)= ', num2str(Y_k) ] )

% (9)
y_2=ifft(Y_k);
disp([' (9) y2(n)= ', num2str(y_2) ] )

% (10)
y_3=circonv(x,h,4);
disp([' (10) y3(n)= ', num2str(y_3) ] )

% (11)
disp(' (11) H(e^jw)= 1-exp(-j2w) = 2jexp(-jw) sin(w) ' )
w=0:pi/2000:2*pi;
z=exp(j*w);
H=1-z.^-2;
figure(11),plot(w/pi,abs(H)),xlabel(' x  \pi        [w]'),grid,title('Magnitude of H(e^{jw})')
figure(12),plot(w/pi,angle(H)/pi),xlabel(' x  \pi        [w]'),grid,title('Phase of H(e^{jw})')
ylabel('  x  \pi  rads')

figure(13),plot((w-pi)/pi,fftshift(abs(H))),xlabel(' x  \pi        [w]'),grid,title('Magnitude of H(e^{jw})')
figure(14),plot((w-pi)/pi,fftshift(angle(H)/pi)),xlabel(' x  \pi        [w]'),grid,title('Phase of H(e^{jw})')
ylabel('  x  \pi  rads')

disp(' '),disp('----------------------------------')
% (11_)
disp(' Check 4-point DFT X(k) from X(e^{jw}) plot')
disp(' (11_) X(e^jw)= 1-exp(-j2w)+ exp(-j3w) ' )

w=0:pi/2000:2*pi;
z=exp(j*w);
X=1-z.^-2+z.^-3;
figure(15),plot(w/pi,abs(X)),xlabel(' x  \pi        [w]'),grid,title('Magnitude of X(e^{jw})')
figure(16),plot(w/pi,angle(X)/pi),xlabel(' x  \pi        [w]'),grid,title('Phase of X(e^{jw})')
ylabel('  x  \pi  rads')

figure(17),plot((w-pi)/pi,fftshift(abs(X))),xlabel(' x  \pi        [w]'),grid,title('Magnitude of X(e^{jw})')
figure(18),plot((w-pi)/pi,fftshift(angle(X)/pi)),xlabel(' x  \pi        [w]'),grid,title('Phase of X(e^{jw})')
ylabel('  x  \pi  rads')
disp(' ')





