load('mtlb')
%sound(mtlb, Fs); %CUM cunatinzam cele 4000 de valori
%vizualizam semnalul sa vedem daca avem nevoie de semn, avem si val
%negative si pozitive -> avem nevoie de bit de semn

plot(mtlb)
a=max(mtlb) %partea intreaga 2biti sunt ok, max= +- 3, ceva (e cea mai importanta parte)
m=min(mtlb) % partea imaginara sunt restul de biti

%informatii despre nr de biti
dt=fixdt(1,8,5); % 1 inseamna semn pozitiv

%cuantizare 
x_T=num2fixpt(mtlb,dt,[], 'Floor', 'on'); %(x trunchiat prin trunchiere)
x_R=num2fixpt(mtlb,dt,[], 'Nearest', 'on'); %(trunchiere spre zero)  - eroare minima 
x_tsv=num2fixpt(mtlb,dt,[], 'Zero', 'on'); %(trunchiere semn valoare)

% T E apartine (-delta, 0)
% R Eroarea apartine (-delta/2, delta/2) - cele mai mici erori
% Trunchiere semn valoare Eroarea apartine (-delta, +delta)


%ex 1 f
figure(1)
plot(x_R)
E_R=x_R-mtlb;
plot(E_R) %Eroarea de cuantizare semana cu un semnal de tip zgomot

figure(2)
plot(x_T)
E_T=x_T-mtlb;
plot(E_T) 

figure(3)
plot(x_tsv)
E_tsv=x_tsv-mtlb;
figure
plot(E_tsv) 





