function [x,y] = lu_Solve (A,b)
  %Definition of the size
  [n n]= size(A);
  %Calling the LU function
  [L,U]=LU(A);
  %Now use a vector y to solve 'Ly=b'
  %Definition of the vector
  y=zeros(n,1);
  %First element of the vector
  y(1)=b(1)/L(1,1);
  for i=2:n
   y(i)=-L(i,1)*y(1);
      for k=2:i-1
          y(i)=y(i)-L(i,k)*y(k);
      end
      y(i)=(b(i)+y(i))/L(i,i);
  end
  %Now we use this y to solve 'Ux = y'
  %Definition of the vector
  x=zeros(n,1);
  %Method of reverse
  x(n)=y(n)/U(n,n);
  %Defintition of counters
  i=n-1;
  q=0;
  while  (i~= 0)
   x(i)=-U(i,n)*x(n);
   q=i+1;
   while(q ~= n)
     x(i)=x(i)-U(i,q)*x(q);
     q++;
   end
    x(i)=(y(i)+x(i))/U(i,i);
    i--;
  end
  disp("");
  disp(round(x));
  disp("");
endfunction
