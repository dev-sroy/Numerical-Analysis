#JACOBI METHOD

A=load('jacobimat.txt')

n=rows(A)
m=columns(A)

b=A(:,m);
A=A(:,[1:n]);

N=input("Enter number of iterations: ");

x=zeros(N,n);

for i=1:n
  str=sprintf("Enter initial guess for x%d: ",i);
  x(1,i)=input(str);
endfor

for m=1:N-1
  for i=1:n
    S=0;
    for j=1:n
      if(i!=j)
        S+=A(i,j)*x(m,j);
      endif
    endfor
    x(m+1,i)=(b(i)-S)/A(i,i);
  endfor
endfor

