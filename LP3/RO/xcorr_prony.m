function r = xcorr_prony(x, k, l, M)

x(1 : M+1-max(k,l)) = 0; %ceastă linie setează primele M+1-max(k,l) elemente ale vectorului x la zero
rxx=xcorr(x);
L=length(x); %Această linie calculează lungimea vectorului x și o stochează în variabila L

%rxx[0]=rxx[L] in Matlab

r = rxx(L+k-l);
%Aici, funcția întoarce valoarea autocorelației parțiale la o anumită distanță, 
% specificată de k și l. 

end
