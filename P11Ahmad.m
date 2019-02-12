function [w] = P11Ahmad(Rx)
[n,m] = size(Rx);
H = (hadamard(n)/sqrt(n));
for i = 1:m
    for j = 1:n
        A(i,j) = H(n,j)*Rx(j,i);
    end
end
b = ones(m,1);
w = A\b;
end