%Pe intervalul [-2,5] sa se reprezinte grafic (in doua ferestre distincte) functia de densitate, respectic functia de repartitie a unei
%variabile aleatoare X-Exp(2).Apoi, folosind simulari sa se estimeze: a) valoarea medie E(X) si abaterea standard Std(X); 
%b) probabilitatea P(X > 0.7); aceasta probabilitate estimata sa se compare cu probabilitatea teoretica corespunzatoarea cu ajutorul
%functiei de repartitie(a distributiei Exp(2)) si comenzi specifice Octave.

clf;hold on; axis square;

t=[-2:0.05:5];
figure 1
plot(t, expcdf(t, 0.5),'r-')

figure 2
plot(t, exppdf(t,1/2), 'r-')

N = 5000
suceese = 0;
selecti = exprnd(1/2,[1 N]);
for i = 1:N
  if ( selecti(i) > 0.7)
    suceese ++;
  endif
endfor
mean(selecti)
std(selecti)

suceese
suceese/N
1-expcdf(0.7,1/2)