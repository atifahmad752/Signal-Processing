function [w] = P12Ahmad4(Rx,L3)
[n,m] = size(Rx);
H = (hadamard(n)/sqrt(n));
[I,J] = size(L3);
J1 = 1;
K = 1;
for i = 1:m
    for j = 1:n
        A(i,j) = H(n-2,j)*Rx(j,i);
    end
    %A(i,:) = H(n-2,:).*(conj(Rx(:,i)))';
    if(i == (1+(J*K)))
        J1 = 1;
        K = K+1;
    end
    b(i,1) = L3(1,J1);
    J1 = J1 + 1;
end
J1 = 1;
K = 1;
for i = 1:m
    for j = 1:n
        A(i+m,j) = H(n-1,j)*Rx(j,i);
    end
    %A(i,:) = H(n-1,:).*(conj(Rx(:,i)))';
    if(i == (1+(J*K)))
        J1 = 1;
        K = K+1;
    end
    b(i+m,1) = L3(2,J1);
    J1 = J1 + 1;
end
J1 = 1;
K = 1;
for i = 1:m
    for j = 1:n
        A(i+2*m,j) = H(n,j)*Rx(j,i);
    end
    %A(i,:) = H(n,:).*(conj(Rx(:,i)))';
    if(i == (1+(J*K)))
        J1 = 1;
        K = K+1;
    end
    b(i+2*m,1) = L3(3,J1);
    J1 = J1 + 1;
end
A;
b;
w = A\b;
end
