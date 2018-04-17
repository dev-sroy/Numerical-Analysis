#NEWTON'S FORWARD DIFFERENCE
clear all;

function val=f(x)
  val=x^2+x+1;
endfunction

a=input("Enter beginning of data points: ");
b=input("Enter end of points: ");

n=input("Enter number of points: ");

h=(b-a)/n;

x=zeros(1,n);
y=zeros(n,n);

for i=1:1:n
  x(i)=a+(i-1)*h;
  fx(1,i)=f(x(i));
endfor

for i=1:1:n
  for j=1:1:n-i
    fx(i+1,j)=fx(i,j+1)-fx(i,j);
  endfor
endfor

disp("\nThe forward diffferences are(row-wise): ")
disp(fx)
