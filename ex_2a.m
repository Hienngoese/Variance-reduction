function [ revenue ] = ex_2a( S0, r , sigma_a, K,n )
T=1/3;
S=zeros(n+1,1);
S(1)=S0;
mu_x=(r-0.5*sigma_a^2)*T/n;
sigma_x=sigma_a*(sqrt(T/n));
for i=2:n+1;
  X(i)=normrnd(mu_x,sigma_x);
  S(i)=S(i-1)*exp(X(i-1));  
end
A= sum(S)/(1+n);
revenue = max(A-K,0);

end


