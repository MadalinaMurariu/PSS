function [ b,a ] = pademethod( ord, hd )

y=hd(1:2*ord+1)';

Ad= [eye(ord+1); zeros(ord, ord+1)];
As= zeros(2*ord+1, ord);
   
    for i=1:ord
        %coloana nr i
    As(:,i)=[zeros(i,1) ; -hd(1:2*ord+1-i)'];
    end
    
A=[As Ad];
x=linsolve(A,y);
a=x(1:ord)
b=x(ord+1:end) %(end=2*ord+1)
 
end

