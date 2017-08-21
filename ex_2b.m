function [ estimated_mean, estimated_var ] = ex_2b( S0, r , sigma_a, K,n )
T=1/3;
s=100000;
Y= zeros(1,s);
for j = 1:s    
    Y(j) = ex_2a( S0, r , sigma_a, K,n );
end
estimated_mean=mean(Y);
estimated_var=var(Y);
end


