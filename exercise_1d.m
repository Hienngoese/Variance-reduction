function[variate_est, variance]=exercise_1d(k)
estimator=zeros(k,1);
var_1=zeros(k,1);
x=rand(k,1);
g_two=x.^(1/3);
c=-0.6428;
for i=1:k
  estimator(i) = estimator(i) + g_two(i)+c*(x(i)-0.5);
end
variate_est=mean(estimator);
var_1=var(estimator);
variance=(var_1)/k;
end