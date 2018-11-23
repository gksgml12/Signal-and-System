function rect(fo, Tau, type)
%[������(rect.m)]
%<�Էº���>
%fo; ���� ���ļ�[Hz]
%Tau; ������ ������[sec]
%type='h'; ��������
%    ='f'; ��������
%�ð� ��
DT=1/(100*fo); %�ð� ����
T=4/fo;   %�ð� ����(�� �ֱ��� 4��)
t=0:DT:T; %�ð� ����
D=exp(-DT/Tau); %�������� ���� ������

ac_sig=sin(2*pi*fo*t);  %���� ������
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
title('������'), xlabel('�ð�(��)'), ylabel('����(V)')