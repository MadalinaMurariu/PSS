function r = xcorr_prony(x, k, l, M)

x(1 : M+1-max(k,l)) = 0; %This line sets the first M+1-max(k,l) elements of the vector x to zero.
rxx=xcorr(x); % Calculates the partial autocorrelation, the full vector x
L=length(x); %This line calculates the length of the vector x and stores it in the variable L

%rxx[0]=rxx[L] in Matlab
%We will position ourselves relative to 0.
r = rxx(L+k-l); 

end
