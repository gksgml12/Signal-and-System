function xint=interp_bae(x)
% sinc interpolation
figure,stem(x),grid,title('input signal')
N = length(x);
y = zeros(2*N-1,1);
y(1:2:2*N-1) = x;
yy=y(1:2*N-1);
figure,stem(y),grid,title('zero insertion')
xint = fconv_bae(y(1:2*N-1), sinc([-(2*N-3):(2*N-3)]'/2));
figure,stem(xint),grid,title('fft domain: conv')
xint = xint(2*N-2:end-2*N+3);
figure,stem(xint),grid,title('interpolated output')

ss=sinc([-(2*N-3):(2*N-3)]'/2);
figure,stem(ss),grid,title('sinc')
figure,stem(conv(yy,ss)),grid,title('time domain: conv')

end

