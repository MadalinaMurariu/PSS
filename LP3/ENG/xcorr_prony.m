function r = xcorr_prony(x, k, l, M)

x(1 : M+1-max(k,l)) = 0; %ceastă linie setează primele M+1-max(k,l) elemente ale vectorului x la zero
rxx=xcorr(x);
L=length(x); %Această linie calculează lungimea vectorului x și o stochează în variabila L

%rxx[0]=rxx[L] in Matlab

r = rxx(L+k-l);
%Aici, funcția întoarce valoarea autocorelației parțiale la o anumită distanță, 
% specificată de k și l. Aceasta este realizată prin accesarea elementului L+k-l din 
% vectorul rxx care conține autocorelația calculată în prealabil.

end

%Este important de menționat că zero-padding-ul (x(1 : M+1-max(k,l)) = 0) 
% poate fi utilizat pentru a asigura că autocorelația se calculează corect,
% indiferent de lungimea vectorului x și distanța specificată.