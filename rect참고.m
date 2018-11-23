function rect(fo, Tau, type)
%[정류기(rect.m)]
%<입력변수>
%fo; 교류 주파수[Hz]
%Tau; 정류기 시정수[sec]
%type='h'; 반파정류
%    ='f'; 전파정류
%시간 축
DT=1/(100*fo); %시간 간격
T=4/fo;   %시간 길이(한 주기의 4배)
t=0:DT:T; %시간 벡터
D=exp(-DT/Tau); %시정수에 의한 방전률

ac_sig=sin(2*pi*fo*t);  %반파 정류기
if type=='f' ac_sig=abs(ac_sig); %
end

rect_sig=zeros(1,length(ac_sig));
for n=2:length(ac_sig)
    env=rect_sig(n-1)*D;
    rect_sig(n)=(ac_sig(n)>=env)*ac_sig(n)+(ac_sig(n)<env)*env;
end

clf
line([0,T],[0,0])
hold on
plot(t, ac_sig, 'b')
plot(t, rect_sig, 'r')
axis([0, T, -1.2, 1.2])
title('정류기'), xlabel('시간(초)'), ylabel('전압(V)')