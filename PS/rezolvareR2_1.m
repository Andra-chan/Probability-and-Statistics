%Un email este trimis aleator catre unul dintre 4 servere disponibile astfel: cu probabilitatea i/10 catrea Si, care apoi proceseaza
%emailul in Ti secunde, unde Ti area distributia exponentiala cu media i secunde, pt i apartine {1,2,3,4}
%a)Afisati probabilitatea teoretica pentru ca emailul sa fie procesat de serverul S3 sau S4
%b)Estimati valoarea media a timpului (in secunde) de procesare a emailului.
%c)Estimati probablitatea ca emailul sa fie procesat in cel putin 3 secunde.

clc;clear all;

N = 10000;

pro = [1 2 2 3 3 3 4 4 4 4];

vec = [];
evMaiMare3 = 0;
ev3sau4 = 0;
for i= 1:N
  rz = randsample(pro,1);
  t = exprnd(rz)
  vec(i) = t;
  if t > 3
    evMaiMare3++;
  endif
  
  %pentru verificare
  if rz == 3 || rz == 4
    ev3sau4 ++;
  endif
endfor

probEmp3sau4 = ev3sau4/N %Doar pentru verificare nu se cere in cerinta
probTeo3sau4 = 3/10 + 4/10 % evenimentul S3 rezolva requestul si evenimentul S4 rezolva requestul sunt evenimente disjuncte deci P(S3 U S4) = P(S3) + P(S4)

valmed = mean(vec)
prob = evMaiMare3/N
