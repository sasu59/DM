
function [class,type]=denclue(D,h,E,e)

AA=zeros(4,150);
R=zeros(4,150);
I=zeros(150);
ff=0;

m=1;
for i=1:150
    xo=FindAttractor(D(:,i),D,h,e);
    for j=1:150
        f=exp(-(xo-D(:,j))'*(xo-D(:,j))/(2*(h^2)))/((2*3.1415)^0.5);
        ff=ff+f;
    end
    fx=ff/150/h;
    if fx>=E
        AA(:,m)=xo;
        AAA=unique(AA','rows');
        AA=AAA';
        R(:,m)=D(:,i);
        RR=unique(R','rows');
        R=RR';
        I(m)=i;
        I=unique(I);
        m=m+1;
    end
end
AA
[class,type]=slowdbscan(AA',5,e);







