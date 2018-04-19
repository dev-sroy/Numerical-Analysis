clear all;

A=load('mat.txt')

n=rows(A);
m=columns(A);

L=eye(n);
x=zeros(1,n);
b=A(:,m);
A=A(:,[1:n]);

for i=1:n
  for k=i+1:n
    L(k,i)=A(k,i)/A(i,i);
    for j=i:1:n
      A(k,j)-=L(k,i)*A(i,j);  
    endfor
    b(k)-=L(k,i)*b(i);
   endfor
endfor
x(n)=b(n)/A(n,n);
for k=n-1:-1:1
  S=0;
  for j=k+1:n
    S+=A(k,j)*x(j);
  endfor
  x(k)=(b(k)-S)/A(k,k);
endfor
x