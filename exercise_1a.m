function[estimator]=exercise_1a(k)
x=rand(k,1);
g=x.^(1/3);
estimator = mean(g);
end