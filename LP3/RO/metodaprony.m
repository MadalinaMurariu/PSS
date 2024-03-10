function [b,a] = metodaprony(ord, hd)

    %Se creeaza A
    for i=1:ord
        for j=1:ord
             A(i,j)=xcorr_prony(hd, i, j, ord);
        end
    end

    %Se creeaza B
    for i=1:ord
         B(i,1)=-xcorr_prony(hd, i, 0, ord);
    end

	%Se rezolva sistemul AxB
   a=linsolve(A,B);
    %a=a'
    %Se calculeaza b
    for n=0:ord
    %primele ecuatii de la metoda Pade
    b(1+n)=hd(n+1) + sum(a(1:n)' .*hd(n:-1:1)); %Acesta este un sub-vector al lui hd 
    % care include elementele de la n la 1, parcurgând vectorul hd în ordine inversă.
    end
    b=b';
end

