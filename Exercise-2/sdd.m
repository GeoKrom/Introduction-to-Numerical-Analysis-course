%Giorgos Krommydas
%A.M.:3260
function sum = sdd(A)
  %The size of the matrix
  [n n]=size(A);
  %Definition of the sum
  sum=0;
  disp("Check the main diagonal");
  %Definition of the variables
  i=1;
  j=1;
  flag=0;
  k=1;
  %Calculation of the sum
  while(i <= n)
    while(j <= n)
      if(i ~= j)
        sum +=abs(A(i,j));
      end
      j++;
     end
     i++;
  end
  disp("The summury is: ");
  disp(sum);
  %Checking the sum
  if(sum < abs(A(k,k)))
      flag=1;  
  else
      flag=0;
  end
endfunction
