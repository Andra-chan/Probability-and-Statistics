%Se generaza un vector v cu 5 numere alese aleator si independent conform distributiei uniforme pe intervalul [0,10]
%Apoi se aleg aleator fara returnare doua numere X1, X2 din v.
%a) Generati 1000 de perechi de valori pentru X1,2 si apoi estimati valoarea medie a sumei X1 + X2 si probabilitatea ca
%|X1 - X2| > 2
%b)Afisati probabilitatea teoretica a evenimentului ca exact 2 elemente din v sa apartina intervalului [5,8]

disp "Subpunctul a"

Suma = 0;
Eveniment = 0;
for i = 1:1000
  v = rand(5, 1)*10;  
  X = randsample(v, 2, replacement = false);
  X1 = X(1);
  X2 = X(2);
  Suma = Suma + X1 + X2;
  if(abs(X1-X2)>2)
    Eveniment = Eveniment + 1;
  endif
endfor

disp "Suma medie: "
Suma = Suma/1000
disp "Probabilitate: "
Prob = Eveniment/1000

disp "Subpunctul b"

binopdf(2, 5, 0.3)