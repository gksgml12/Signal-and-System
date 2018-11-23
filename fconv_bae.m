function z = fconv_bae(x,y)
% convolution by fft

N = length(x)+length(y)-1;
P = 2^nextpow2(N);
z = ifft( fft(x,P) .* fft(y,P));
z = z(1:N);

end

