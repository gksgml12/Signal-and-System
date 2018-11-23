function [ s1,s2,s_int ] = sigRecord(Fs,duration)

% [ s1,s2,s_int ] = sigRecord(Fs,duration)
% sigRecord ... Bae 05/17/2017

% Fs: sampling frequency
% duration: ≥Ï¿Ω Ω√∞£
% s1: floating number type
% s2: fixed number type
% s_int: 16-bitbinteger type 'int16'
r=audiorecorder(Fs,16,1);
recordblocking(r,duration);
s1=getaudiodata(r);
s_int=getaudiodata(r,'int16');
s2=double(s_int);
end

