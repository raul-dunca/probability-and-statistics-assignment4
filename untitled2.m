clear all;
clc;

N=input('number of simulations: ');
p=input('probability of succes: ');

for i=1:N
    % the ith simulation
    U=rand;
    X(i)=(U<p);

end
X
U_X=unique(X);
n_X= hist(X,length(U_X))
relative_freq=n_X/N;
[U_X;relative_freq]
%[1:N; X]

