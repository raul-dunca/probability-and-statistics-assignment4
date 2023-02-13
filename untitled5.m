clear all;
clc;

N=input('number of simulations: ');
n=input('number of successes: ');
p=input('probability of succes: ');
count=0;
k=0;
for i=1:N
    total=0;
    fails=0;
    sucesses=0;
    while (sucesses<n)
       U=rand;
       if U<p
           sucesses=sucesses+1;
       else
           fails=fails+1;
       end
       total=total+1;
    end
    X(i)=fails;
end
X
U_X=unique(X);
n_X= hist(X,length(U_X));
relative_freq=n_X/N;
[U_X;relative_freq]
%[1:N; X]\
k=0:200;
pk=nbinpdf(k,n,p);
plot(k,pk,'+',U_X,relative_freq,'o')
legend('Pascal distribution','Simulation')