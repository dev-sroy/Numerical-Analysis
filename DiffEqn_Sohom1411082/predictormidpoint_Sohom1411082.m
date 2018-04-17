#PREDICTOR-CORRECTOR METHOD USING MIDPOINT METHOD AS PREDICTOR

clear all;

function val=f(x,y)
  val=sin(x);         #Enter function as required
endfunction

n=input("Number of iterations: ")
y=zeros(n,3);

x=zeros(n,1);
x(1)=input("Enter first value of x: ");
y(1,1)=input("Enter first value of y: ");
h=input("Enter step size: ");
x(2)=x(1)+h;
y(2,1)=y(1,1)+h*f(x(1),y(1,1));       #Calculating second value of x and y using Euler method

y(1,2)=y(1,1);
y(1,3)=y(1,1);
y(2,2)=y(2,1);
y(2,3)=y(2,1);
for i=3:1:n
#Predictor using midpoint method
  y(i,1)=y(i-2,3)+2*h*f(x(i-1),y(i-1,3));
  x(i)=x(i-1)+h;                
#Corrector using trapezoidal rule
  for j=2:3
    y(i,j)=y(i-1,3)+(h/2)*(f(x(i-1),y(i-1,3))+f(x(i),y(i,j-1)))  ;
  endfor 
endfor
x
y
