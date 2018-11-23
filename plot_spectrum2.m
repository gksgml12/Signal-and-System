function [X,f]=plot_spectrum2(x,Fs);

% function [X,f]=plot_spectrum(x,Fs);
% K.S.Bae ... 05/11/2017
% �־��� �������� Fourier transform�� �̿��� ����Ʈ�� ���ϰ�, �׸���
% x: data
% Fs: x data�� sampling frequency
 

N=10000;%N-point FFT
X=fftshift(fft(x,N));
k=-N/2:(N-1)/2;f1=Fs/N*k;

f=f1(1:N);mag=abs(X(1:N)); 
figure,plot(f,mag),grid
xlabel('Frequency  [Hz]'),ylabel('Amplitude')
title('Magnitude Spectrum of the Given Signal')

end
