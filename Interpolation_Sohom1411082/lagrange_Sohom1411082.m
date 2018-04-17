#LAGRANGE INTERPOLATION
clear all;

n=input("Enter the number of points: ");
x=zeros(1,n)
y=zeros(1,n)

for i=1:1:n
  instrx=sprintf("Enter the value of x_%d: ",i-1);
  instry=sprintf("Enter the value of y_%d: ",i-1);
  x(i)=input(instrx);
  y(i)=input(instry);
endfor
l=zeros(n,n+1);
#Computing the Lagrange coefficients
for j=1:1:n
  p=[0,1];
  denom=1;
  for i=1:1:n
    if(i!=j)
      p=conv(p,[1,-x(i)]);
      denom*=(x(j)-x(i));
    endif
  endfor
  l(j,:)=p/denom;
endfor
coeff=zeros(1,n+1)  #coeff stores the coefficients of the Lagrange polynomial
for i=1:1:n
  l(i,:)=y(i)*l(i,:);
  coeff+=l(i,:)    
endfor

sprintf("The interpolated polynomial is: %s",polyout(coeff,'x'))
plot(x,polyval(coeff,x))




 


 