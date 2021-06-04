function [L,U] = lu (A)
  %The size of the matrix
  [n n] = size(A); 
  %Definition of the lower zero matrix
  L=zeros(n,n);
  %Definition of the upper zero matrix
  U=zeros(n,n);
  for i=1:n
    % Finding L
    for k=1:i-1
      %Here we insert the data of the matrix A in the lower matrix (i<j)
      L(i,k)=A(i,k);
      for j=1:k-1
        %We nullify the data, which are upper from the diagonal
        L(i,k)= L(i,k)-U(j,i)*L(j,k);
      end
      L(i,k) = L(i,k)/U(k,k);
    end
    %We define the diagonal of the Lower matrix
    L(i,i)=1;
    ;
    
    % Finding U
    for k=i:n
      %Here we insert the data of the matrix A in the upper matrix
      U(i,k) = A(i,k);
      for j=1:k-1
        %We nullify the data, which are lower from the diagonal
        U(k,i)= U(k,i)-L(j,i)*U(k,j);
      end
    end
  end
  disp("The matrix L and matrix U are"); 
endfunction
