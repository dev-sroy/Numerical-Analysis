#NEWTON-COTES METHOD

clear all;

function val=f(x)
  val=x^3+x^2+1;   #Sample function given here. Enter any function as desired.
endfunction

n=input("Enter number of points: ");
x=zeros(1,n);
y=zeros(1,n);

a=input("Enter lower limit of integration: ");
b=input("Enter upper limit of integration: ");

h=(b-a)/(n-1);

for i=1:1:n
  x(i)=a+(i-1)*h;    #Creating an array of equally spaced points
endfor

for i=1:1:n
  y(i)=f(x(i));
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

#Computing the weights by integrating the Lagrange coefficients from lower limit to upper limit

w = zeros(1,n);

for i=1:1:n
  intcoeff = polyint(l(i,:));  #Indefinite integration of the Lagrange polynomial
  w(i) = polyval(intcoeff,b)-polyval(intcoeff,a);   #Computing the jth weight
endfor

#Computing the definite integral
integral=0;
for i=1:1:n
  integral+=y(i)*w(i);    #Computing the definite integral
endfor

#Generating the formatted version of the Newton Cotes rule for n points

rule="";
for i=1:1:n
  str=sprintf("%f*x[%d] + ",w(i),i-1);
  rule=strcat(rule,str);
endfor

rule=strcat(rule,"\b.");
rulestr=sprintf("The Newton-Cotes polynomial for the given endpoints and %d points is:\n ",n+1);
disp(strcat(rulestr,rule))
outstr=sprintf("The value of the integral computed using the Newton-Cotes method for %d points is: %f",n+1,integral);
disp(outstr)

