clc;clear all;


%rezolvare r1.2

N = 10000;

vec = [];
even4s = 0;
ev1_5 = 0;
for i = 1:N
  t = abs(normrnd(1,1));
  if t > 2
    vec(i) = 2 + exprnd(2);
  else
    vec(i) = t;
  endif
  
  if vec(i) < 4
    even4s ++;
  endif
  
  if vec(i) < 1.5
    ev1_5 ++;
  endif
endfor


ev1_5/N % empirica nu se cerea
prob1_5 = normcdf(1.5,1,1) - normcdf(-1.5,1,1)

media = mean(vec)
prob4s = even4s/N