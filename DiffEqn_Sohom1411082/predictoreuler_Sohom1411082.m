#PREDICTOR_CORRECTOR METHOD USING EULER METHOD AS PREDICTOR

clear all;
format long;

function val=f(x,y)
  val=-1*tan(y);    #Enter function as required
endfunction

n=input("Number of iterations: ")
y=zeros(n,3);

x=zeros(n,1);
x(1)=input("Enter initial value of x: ");
y(1,1)=input("Enter initial value of y: ");
h=input("Enter step size: ");
y(1,2)=y(1,1);
y(1,3)=y(1,1);
for i=2:1:n
#Predictor using Euler method
  y(i,1)=y(i-1,3)+h*f(x(i-1),y(i-1,3));
  x(i)=x(i-1)+h;
#Corrector using trapezoidal rule
  for j=2:3
    y(i,j)=y(i-1,3)+(h/2)*(f(x(i-1),y(i-1,3))+f(x(i),y(i,j-1)))  ;
  endfor 
endfor
x
y