function [revenue,revenue_mean] = ex_2h( S0, r , sigma_a, K,n )
T=1/3;
s=100000;
revenue= zeros(1,s);
mu_x=(r-0.5*sigma_a^2)*T/n;
sigma_x=sigma_a*(sqrt(T/n));
for j = 1:s   
  S(1)=S0;
  X=normrnd(mu_x,sigma_x,1,n);
for i = 2:n+1;
  S(i)=S(i-1)*exp(X(i-1));  
 end   
 G = exp(sum(log(S))/(n+1));
 revenue(j) = max(G-K,0);
end
mu_g=0.5*mu_x*n+ log(S0);
sigma_g=sqrt(n*(2*n+1)/(6*(n+1)))*sigma_x;
f_1=normcdf(((mu_g-log(K)+sigma_g^2)/sigma_g));
f_2=normcdf(((mu_g-log(K))/sigma_g));
revenue_mean = mean(revenue);
theoretical_mean=exp(mu_g + sigma_g^2/2)*f_1-K*f_2
end
