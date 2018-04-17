#COMPUTING THE NEWTON'S DIVIDED DIFFERENCE POLYNOMIAL

clear all;

function val=f(x)
  val=x^2+x+1;
endfunction

n=input('Enter number of data points: ')
x=zeros(1,n);
fx=zeros(n,n);

for i=1:1:n
  s=sprintf('Enter the value of x at point %d: ',i);
  x(i)=input(s);
endfor

disp(x)
disp("\n")

for i=1:1:n
  fx(1,i)=f(x(i));
endfor

for i=1:1:n
  for j=1:1:n-i
    fx(i+1,j)=(fx(i,j+1)-fx(i,j))/(x(j+i)-x(j));
  endfor
endfor
disp('The divided differences are(row-wise):')
disp(fx)

#Computing the divided difference polynomial
coeff=zeros(n,n);
p=zeros(1,n);
p(n)=1;
coeff(1,n)=fx(1,1);
for i=2:1:n
  p=conv(p,[1,-x(i-1)],shape='same');
  coeff(i,:)=p*fx(i,1);
endfor
final_coeff=zeros(1,n);
for i=1:1:n
  final_coeff(i)=sum(coeff(:,i));
endfor
disp("The Newton divided difference polynomial for the given data points is ");
disp(polyout(final_coeff,'x'));
