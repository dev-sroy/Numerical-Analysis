#SECANT METHOD

clear all;
function val=f(x)
  val=x**3+4*x**2+x+1;                      #Enter function as required
endfunction

tol=1e-5; #Tolerance  
n=0; #Number of iterations

x0=input('Enter first guess: ')
x1=input('Enter second guess: ')
x2=x1;
while(abs(f(x2))>tol)
  x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));    #Remove semicolon to see all the iterations
  x0=x1;
  x1=x2;
  n=n+1;
endwhile

out=sprintf('The root is: %f\nThe number of iterations is: %d',x2,n);
disp(out)