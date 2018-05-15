b=load('E:\数据挖掘\1.Numeric Data Analysis\1.Numeric Data Analysis\1.txt');
M=mean(b)
cov(b)
a=repmat( M ,19020 , 1 ); 
Z=b-a;   %中心数据矩阵
%第二问
C=Z'*Z/19020 %内积求cov 
%第三问
e = zeros(10, 10);
for i=1:19020
    d=Z(i,:);
    e=e+d'*d;
end
C2=e/19020
%第四问
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
%第五问
c=b(:,1)';  
u=mean(c);  %均值
s=var(c);   %方差
xx=min(c):0.1:max(c); 
figure
plot(xx,normpdf(xx,u,s)) 
%第六问
var(b)
%第七问
seven=cov(b)
fprintf('协方差最大值为：')
max(max(seven))
[x1,y1]=find(seven==max(max(seven)));
fprintf('在第%d和第%d个属性间',x1,y1)
fprintf('协方差最小值为：')
max(min(seven))
[x2,y2]=find(seven==min(min(seven)));
fprintf('在第%d和第%d个属性间',x2,y2)

%[class,type]=denclue(D',5,5,0.0001)


