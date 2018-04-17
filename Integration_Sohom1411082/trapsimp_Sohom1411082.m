#TRAPEZOIDAL, SIMPSON'S 1/3 AND 3/8 RULE
clear all;

function val=f(x)
   val=x^3+sin(x);    #Enter function as required
 endfunction

 a=input("Enter the lower limit of integration: ")
 b=input("Enter the upper limit of integration: ")
 
 c=(a+b)/2;
 r=(b-a);
 a1=(a+2*b)/3;
 a2=(2*a+b)/3;
 inttrap=r/2*(f(a)+f(b));                     #Trapezoidal rule
 intsimp13=r/6*(f(a)+4*f(c)+f(b));            #Simpson's 1/3 rule
 intsimp38=r/8*(f(a)+3*f(a1)+3*f(a2)+3*f(b)); #Simpson's 3/8 rule
 outtrap=sprintf("The value of the integral computed by trapezoidal rule is: %f",inttrap);
 outsimp13=sprintf("The value of the integral computed by Simpson's 1/3 rule is: %f",intsimp13);
 outsimp38=sprintf("The value of the integral computed by Simpson's 3/8 rule is: %f",intsimp38);
 disp(outtrap)
 disp(outsimp13)
 disp(outsimp38)