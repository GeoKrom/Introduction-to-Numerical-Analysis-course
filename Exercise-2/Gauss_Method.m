% Gauss Method for solving linear systems

function out = Gauss_Method(A,b,n)
  i=1;
  sum=sdd(A);
  while(i<=1)
    if(sum < abs(A(i,i)))
      [L,U]=lu(A);
      [x,y]=lu_Solve(A,b);
      out=x;
    else
      disp("The diagonal is not strickly");
    end
    i++;
  end
end
