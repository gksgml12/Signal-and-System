function [X,f]=plot_spectrum(x,Fs);

% function [X,f]=plot_spectrum(x,Fs);
% K.S.Bae ... 05/11/2017
% 주어진 데이터의 Fourier transform을 이용한 스펙트럼 구하고, 그리기
% x: data
% Fs: x data의 sampling frequency
 

N=10000;%N-point FFT
X=fft(x,N);
k=0:N-1;f1=Fs/N*k;

f=f1(1:N/2);mag=abs(X(1:N/2)); 
figure,plot(f,mag),grid
xlabel('Frequency  [Hz]'),ylabel('Amplitude')
title('Magnitude Spectrum of the Given Signal')

figure,plot(f,db(mag)),grid
xlabel('Frequency  [Hz]'),ylabel('Amplitude [dB]')
title('Magnitude(dB) Spectrum of the Given Signal')

end
