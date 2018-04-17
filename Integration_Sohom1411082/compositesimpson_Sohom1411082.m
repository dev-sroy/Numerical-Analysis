#COMPOSITE SIMPSON'S RULE
clear all;

function val=f(x)
  val=x^4+x^2+1;            #Enter function as required
endfunction

do
  n=input("Enter value of n(must be even number): ");
until(mod(n,2)==0)
x=zeros(1,n+1);             #Number of data points is n+1
a=input("Enter the lower limit of integration: ");
b=input("Enter the upper limit of integration: ");

h=(b-a)/n;                  #Step size

for i=1:1:n
  x(i)=a+(i-1)*h;           #Creating an array of equally spaced points
endfor
intcsimp=0;
for i=2:1:n
  if(mod(i,2)==0)
    intcsimp+=4*f(x(i));
  else
    intcsimp+=2*f(x(i));
  endif
endfor

intcsimp+=f(x(1))+f(x(n+1));
intcsimp*=h/3;

outstr=sprintf("The value of the integral computed by composite simpson's rule using %d points is: %f",n+1,intcsimp);
disp(outstr)

