% Newton - Raphson method for solving non - linear equations
function [out] = Newton(f,df,x1,TOL,NMAX)
  format long
  %The algorithm begins in the first level
  x(1)=x1;
  %Here i define the counter
  i=2;
  %The process begins
  while(i<=NMAX)
    %We define the sequence
    x(i)=x(i-1) - (f(x(i-1))/df(x(i-1)));
    %Here we check the existance of the root
    if(f(x(i))==0 && abs(x(i)-x(i-1)<=TOL))
      out=x(i);
    else
      disp("The root has not been found");
    end
    %We increase the counter
    i++;
  end
  %We build the matrix with the results
  if(i<=NMAX)
    k=1:i;
  else
    k=1:NMAX
  end
  %The results are in the following matrix
  out=[k',x(k)',f(x(k))'];
  disp(out);
end
