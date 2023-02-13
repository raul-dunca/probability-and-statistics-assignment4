clear all;
clc;

N=input('number of simulations: ');
p=input('probability of succes: ');
count=0;
k=0;
for i=1:N
    count=0;
    k=0;
    while count==0
       U=rand;
       k=k+(1-(U<p));
       count=(U<p);
    end
    X(i)=k;
end
X
U_X=unique(X);
U_X
n_X= hist(X,length(U_X));% here is wrong length(U_X)
n_X
relative_freq=n_X/N;
[U_X;relative_freq]
%[1:N; X]
plot(U_X,relative_freq,'o',0:20,geopdf(0:20,p),'x')