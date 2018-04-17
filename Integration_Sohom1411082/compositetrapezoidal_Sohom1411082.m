#COMPOSITE TRAPEZOIDAL RULE
clear all;

function val=f(x)
  val=x^4+x^2+1;
endfunction

n=input("Enter value of n: ");
x=zeros(1,n+1);  #Number of data points is n+1
a=input("Enter lower limit of integration: ");
b=input("Enter upper limit of integration: ");

h=(b-a)/n;

for i=1:1:n+1
  x(i)=a+(i-1)*h;
endfor

intctrap = 0;

for i=2:1:n
  intctrap+=2*f(x(i));
endfor

intctrap+=f(x(1))+f(x(n+1))
intctrap*=h/2

outstr = sprintf("The value of the integral computed by using composite trapezoidal rule using %d points is: %f",n+1,intctrap);
disp(outstr)
