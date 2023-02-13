clear all;
clc;

N=input('number of simulations: ');
n=input('number of trials: ');
p=input('probability of succes: ');

for i=1:N
    k=0;
    for j=1:n
        U=rand;
        k=k+(U<p) ;
    end
    X(i)=k;
end

U_X=unique(X);
n_X= hist(X,length(U_X));
relative_freq=n_X/N;
[U_X;relative_freq]
plot(U_X,relative_freq,'o',0:n,binopdf(0:n,n,p),'x')

%[1:N; X]