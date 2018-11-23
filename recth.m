function seg =  recth(x)
for i=1:1:601
if(x(i)>0)
seg(i)=x(i);
else
seg(i)=0;
end
end