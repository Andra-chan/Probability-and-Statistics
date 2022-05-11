%Sa se genereze un vector v cu 6 numere alese aleator si independent conform distributiei uniforme pe intervalul [0,5]
%Apoi se aleg aleator cu returnare 3 numere Y1, Y2, Y3 din v.
%a) Generati aleator 1000 de triplete pentru Y1,2,3 iar apoi estimati valoarea medie a produsului Y1*Y2*Y3 si 
%probabilitatea ca Y1 + Y2 > Y3 (1.5p)
%b)Afisati ptobabilitatea teoretica a evenimentului ca exect 3 elemente din v sa apartina intervalului [2,4] (0.5p)

disp "Subpunctul a"

Produs = 0;
Eveniment = 0;
for i = 1:1000
  v = rand(6, 1)*5;  
  Y = randsample(v, 3, replacement = true);
  Y1 = Y(1);
  Y2 = Y(2);
  Y3 = Y(3);
  Produs = Produs + Y1*Y2*Y3;
  if(Y1+Y2>Y3)
    Eveniment = Eveniment + 1;
  endif
endfor

disp "Produs mediu: "
Produs = Produs/1000
disp "Probabilitate: "
Prob = Eveniment/1000

disp "Subpunctul b"

binopdf(3, 6, 0.4)