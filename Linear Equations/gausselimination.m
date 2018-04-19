clear all;
format short;

A=load('mat.txt')

n=rows(A)
m=columns(A)

L=zeros(n)
U=zeros(n)

if((m-n)!=1)
  disp("Please check input file.")
endif

disp("The equations are: \n")
for i=1:1:n
  str='';
  for j=1:1:n
    if(A(i,j)>0)
      temp=sprintf("+%fx%d",A(i,j),j);
    else
      temp=sprintf("%fx%d",A(i,j),j);
    endif
    str=strcat(str,temp);
  endfor
  temp=sprintf("=%f",A(i,m));
  str=strcat(str,temp);
  disp(str)
endfor

for i=1:1:n
  mul=A(i,i);
  for j=i:1:m
    A(i,j)=A(i,j)/mul;
  endfor
  for k=i+1:1:n
    t=A(k,i)
    for j=i:1:m
      A(k,j)-=t*A(i,j)
    endfor
   endfor
endfor
