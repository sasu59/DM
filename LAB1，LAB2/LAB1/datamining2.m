%第一问
b=b';
K=zeros(150, 150);
for i=1:150
    for j=1:150
        K(i,j)=b(:,i)'*b(:,j);
    end
end
K
%第二问
Q=zeros(5,150);
for i=1:150
    Q(1,i)=b(1,i)*b(1,i);
    Q(2,i)=b(2,i)*b(2,i);
    Q(3,i)=b(3,i)*b(3,i);
    Q(4,i)=b(4,i)*b(4,i);
    Q(5,i)=b(1,i)*b(2,i)*b(3,i)*b(4,i)*2;
end
Q  %feature space

u=zeros(5,1);
for i=1:150
    u=u+Q(:,i);
end
u=u/150;
a=repmat(u ,1 ,150 );
QQ=Q-a  %中心化

Kn=zeros(150,150);
for i=1:150
    for j=1:150
        Kn(i,j)=Q(:,i)'*Q(:,j)/((sqrtm(Q(:,i)'*Q(:,i)))*sqrtm((Q(:,j)'*Q(:,j))));
    end
end
Kn %normalize

%第三题
KK=zeros(150,150);
for i=1:150
    for j=1:150
        KK(i,j)=Q(:,i)'*Q(:,j);
    end
end
KK



