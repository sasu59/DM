b=load('E:\�����ھ�\1.Numeric Data Analysis\1.Numeric Data Analysis\1.txt');
M=mean(b)
cov(b)
a=repmat( M ,19020 , 1 ); 
Z=b-a;   %�������ݾ���
%�ڶ���
C=Z'*Z/19020 %�ڻ���cov 
%������
e = zeros(10, 10);
for i=1:19020
    d=Z(i,:);
    e=e+d'*d;
end
C2=e/19020
%������
Z1=Z(:,1);
Z2=Z(:,2);
z1=sqrtm(Z1'*Z1);
z2=sqrtm(Z2'*Z2);
m1=Z1/z1;
m2=Z2/z2;
correlation=m1'*m2
d=1:19020;
plot(d,b(:,1),'.','MarkerSize',5,'Color','r');
hold on;
plot(d,b(:,2),'.','MarkerSize',5,'Color','b');
%������
c=b(:,1)';  
u=mean(c);  %��ֵ
s=var(c);   %����
xx=min(c):0.1:max(c); 
figure
plot(xx,normpdf(xx,u,s)) 
%������
var(b)
%������
seven=cov(b)
fprintf('Э�������ֵΪ��')
max(max(seven))
[x1,y1]=find(seven==max(max(seven)));
fprintf('�ڵ�%d�͵�%d�����Լ�',x1,y1)
fprintf('Э������СֵΪ��')
max(min(seven))
[x2,y2]=find(seven==min(min(seven)));
fprintf('�ڵ�%d�͵�%d�����Լ�',x2,y2)

%[class,type]=denclue(D',5,5,0.0001)


