function [opt_c,mean_est] = ex2_i(S0, r , sigma_a, K,n)
T=1/3;
s=100000;
%calculate Y
Y= zeros(1,s);
for j = 1:s    
    Y(j) = ex_2a( S0, r , sigma_a, K,n );
end
mean_Y = mean(Y);
var_Y = var(Y);
%calculate U
[U,mean_U] = ex_2h( S0, r , sigma_a, K,n );
%Find optimal c
covariance=(mean(Y.*U) - mean_U*mean_Y);
opt_c = -1*(covariance/var(U));
Yc=zeros(1,s);
for i=1:s
  Yc(i) = Y(i) + opt_c*(U(i) - mean_U);
end
mean_est = mean(Yc);
var_est = var(Yc)/s
end