#NEWTON-RHAPSON METHOD  

clear all;

function val=f(x)
  val=x**3+4*x**2+x+1;    #Enter function as required
endfunction

function val=df(x)
  val=3*x**2+8*x+1;       #Derivative computed manually
endfunction

tol=1e-10;                #Error bound

x0=input('Enter initial guess: ')
x_curr=x0;
n=0; #Number of iterations
while(abs(f(x_curr))>tol)
  x_new=x_curr - (f(x_curr)/df(x_curr));      #Iteration scheme
  x_curr=x_new;                               #Remove semicolon to see the iterates
  n=n+1;
endwhile

out=sprintf('The root is: %f\nThe number of iterations is: %d',x_curr,n);

disp(out)