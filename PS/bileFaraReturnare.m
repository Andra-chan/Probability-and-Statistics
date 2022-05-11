%1. Intr o urna sunt 10 bile rosii, 5 bile negre si 5 bile albe. Se extrag aleator fara returnare 3 bile din urna.
%a) Estimati folosind comenzi octave probabilitatea evenimentelor: A:bilele au aceasi culoare, B:cele 3 bile sunt de culori diferite,
%C: bilele nu au aceasi culoare
%b) Afisati probabilitatea teoretica pentru P(A), P(B), P(C)

%BILE ROSII 0
%BILE ALBE 1
%BILE NEGRE 2

N = input("Introduceti N: ");
A = 0;
B = 0;
C = 0;

for i = 1:N
  bileR = zeros(1, 10);
  bileA = ones(1, 5);
  bileN = ones(1, 5).*2;
  bile = [bileR bileN bileA];
  extrase = randsample(bile, 3, replacement = false);
  
  %A&C
  if(length(unique(extrase)) == 1)
    A+=1;
  else
    C+=1;
  endif
  
  %B
  if(length(unique(extrase)) == 3)
    B+=1;
  endif
  
endfor


disp "Prob A: "
PA = A/N
disp "Prob B: "
PB = B/N
disp "Prob C: "
PC = C/N

disp "Prob A Teoretica: "
PAT = hygepdf(3, 20, 10, 3) + 2*hygepdf(3, 20, 5, 3)
disp "Prob B Teoretica: "
PAT = 250/nchoosek(20, 3) %10 * 5 * 5 - cazuri favorabile / toate cazurile posibile
disp "Prob C Teoretica: "
PCT = 1 - (hygepdf(3, 20, 10, 3) + 2*hygepdf(3, 20, 5, 3))