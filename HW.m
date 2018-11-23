Fs=8000;% sampling frequency 
y=wavrecord(2*Fs,Fs);

%y=double(y); 
soundsc(y,Fs)

n=0:length(y)-1; Ts=1/Fs; t=n*Ts; plot(t,y), grid
xlabel('TIME [sec]')

plot_spectrum(y,Fs);