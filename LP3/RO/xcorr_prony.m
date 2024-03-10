function r = xcorr_prony(x, k, l, M)

x(1 : M+1-max(k,l)) = 0; %"This line sets the first M+1-max(k,l) elements of the vector x to zero."
rxx=xcorr(x); %Calculates the partial autocorrelation, the full vector x
L=length(x); %This line calculates the length of the vector x and stores it in the variable L

%rxx[0]=rxx[L] in Matlab
%We will position ourselves relative to 0.

r = rxx(L+k-l); 
%Aici, funcția întoarce valoarea autocorelației parțiale la o anumită distanță, 
% specificată de k și l. Aceasta este realizată prin accesarea elementului L+k-l din 
% vectorul rxx care conține autocorelația calculată în prealabil.

end

%Este important de menționat că zero-padding-ul (x(1 : M+1-max(k,l)) = 0) 
% poate fi utilizat pentru a asigura că autocorelația se calculează corect,
% indiferent de lungimea vectorului x și distanța specificată.