function [b,a] = pronymethod(ord, hd)

    %the matrix A is created.
    for i=1:ord
        for j=1:ord
             A(i,j)=xcorr_prony(hd, i, j, ord);
        end
    end

    %the matrix B is created.
    for i=1:ord
         B(i,1)=-xcorr_prony(hd, i, 0, ord);
    end

	% AxB system is resolved
   a=linsolve(A,B);
    %a=a'
    % b coefficients are computed
    for n=0:ord
    %first equations from Pade method
    b(1+n)=hd(n+1) + sum(a(1:n)' .*hd(n:-1:1)); %htis is a sub-vector of hd
% that includes the elements from n to 1, traversing the hd vector in reverse order."
    end
    b=b';
end

