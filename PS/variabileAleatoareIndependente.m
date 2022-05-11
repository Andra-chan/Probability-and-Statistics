%3. Fie X si Y doua variabile aleatoare alocate independent avand distributiile:
%   ( -1  4 )
%X ~(0.5 0.5)   Y ~ Unif[-1,4]. Fie U = X^3 - Y^3
%a) Generati 500 valori pt U si reprezentati grafic histograma corespunzatoarea avand 20 clase
%b) Estimati P(U<0), valoarea medie si varianta lui U
%c) Cat este valoarea medie(teoretica) a lui X^3  


UV = zeros(1, 500);
MedieX3 = 0;
Medie = 0;
Prob = 0;
for i = 1:500
  Y = rand * 5 - 1;
  X = randsample([-1 4], 1);
  U = X^3 - Y^3;
  MedieX3 += X^3;
  UV(i) = U;
  if U<0
    Prob++;
  endif
endfor

disp "Sub a"
hist (UV, 20);
disp "Sub b"
PM = Prob/500
VM = mean(UV)
#variatia
std(UV)

disp "Sub c"
MedieX3 = MedieX3/500