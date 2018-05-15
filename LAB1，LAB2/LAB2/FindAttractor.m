function [xx]=FindAttractor(xxx,D,h,e)

t=1;

x=zeros(4,150);
x(:,t)=xxx;
KK=zeros(4,1);
KKK=0;
while 1
    for i=1:150
        K=exp(-(x(:,t)-D(:,i))'*(x(:,t)-D(:,i))/(2*(h^2)))/((2*3.1415)^0.5);
        KK=KK+K*D(:,i);
        KKK=KKK+K;
    end
    x(:,t+1)=KK/KKK;
    t=t+1;
    if norm(x(:,t)-x(:,t-1))<=e
        break;
    end
end
xx=x(:,t);


