function FI = create_MF (B,n,type)


x = linspace(B(1),B(2),1000);

y = zeros(n,numel(x));

if contains(type,'tri')
    center = B(1):(B(2)-B(1))/(n-1):B(2);
    
    for i=2:n-1
        ind_1 = x>=center(i-1) & x<center(i);
        y(i,ind_1) = (1-0)*(x(ind_1)-center(i))/(center(i)-center(i-1))+1;
        
        ind_2 = x>=center(i) & x<center(i+1);
        y(i,ind_2) = (1-0)*(x(ind_2)-center(i))/(center(i)-center(i+1))+1;
    end
    
    ind_2 = x>=center(1) & x<center(2);
    y(1,ind_2) = (1-0)*(x(ind_2)-center(1))/(center(1)-center(2))+1;
    
    ind_1 = x<=center(end) & x>center(end-1);
    y(end,ind_1) = (1-0)*(x(ind_1)-center(end))/(center(end)-center(end-1))+1;
    
elseif contains(type,'gauss')
    center = B(1):(B(2)-B(1))/(n-1):B(2);
    for i=1:n
        y(i,:)=exp(-(x-center(i)).^2/(2*(0.2123^2)));
    end
end


FI.x=x;
FI.y=y;