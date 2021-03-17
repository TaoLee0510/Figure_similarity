
function cos1=similarity(picture1,picture2)
t1=picture1;
[a1,b1]=size(t1);
t2=picture2;
t2=imresize(t2,[a1 b1],'bicubic');
t1=round(t1);
t2=round(t2);
e1=zeros(1,2000);
e2=zeros(1,2000);
for i=1:a1
    for j=1:b1
        m1=t1(i,j)+1;
        m2=t2(i,j)+1;
        e1(m1)=e1(m1)+1;
        e2(m2)=e2(m2)+1;
    end
end
m1=zeros(1,500);
m2=zeros(1,500);
for i=0:499
    m1(1,i+1)=e1(4*i+1)+e1(4*i+2)+e1(4*i+3)+e1(4*i+4);
    m2(1,i+1)=e2(4*i+1)+e2(4*i+2)+e2(4*i+3)+e2(4*i+4);
end
A=sqrt(sum(sum(m1.^2)));
B=sqrt(sum(sum(m2.^2)));
C=sum(sum(m1.*m2));
cos1=C/(A*B);%?????
