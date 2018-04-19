#JACOBI METHOD

A=load('mat.txt')

n=rows(A)
m=columns(A)

b=A(:,m);
A=A(:,[1:n]);
x=zeros(1,n);

for i=1:n
  str=sprintf("Enter initial guess for x%d: ",i);
  x(i)=input(str);
endfor

