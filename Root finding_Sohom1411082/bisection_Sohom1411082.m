#BISECTION METHOD

clear all;

function val=f(x)
  val=x**3+4*x**2+x+1;                  #Enter function as required
endfunction

tol=1e-10;                              #Error bound
do
  a=input('Enter start of range: ')
  b=input('Enter end of range: ')
  if(f(a)*f(b)>0)                       #Root does not lie in this interval
    disp("Please enter valid range")
  endif
until(f(a)*f(b)<0);
x_curr = (a+b)/2;
if(f(a)<tol)
  out=sprintf('The root is: %d',a);
  disp(out)
endif
if(f(b)<tol)
  out=sprintf('The root is: %d',b);
  disp(out)
endif  

n=0;
while(abs(f(x_curr))>tol)
  x_curr=(a+b)/2;           #Remove semicolon to see all the iterations
  if(f(a)*f(x_curr)<0)
    b=x_curr;
  endif
  if(f(b)*f(x_curr)<0)
    a=x_curr;
  endif
  n=n+1;
endwhile

out=sprintf('The root is: %f\n Number of iterations: %d',x_curr,n)
disp(out)