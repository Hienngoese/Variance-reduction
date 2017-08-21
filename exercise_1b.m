function[variance]=exercise_1b(k)
x=rand(k,1);
g_one=x.^(2/3);
g_two=x.^(1/3);
estimator_one= mean(g_one);
estimator_two= mean(g_two);
variance=(estimator_one - (estimator_two)^2)/k
end