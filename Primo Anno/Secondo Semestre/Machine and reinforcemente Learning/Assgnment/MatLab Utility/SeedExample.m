rng(1,'v5normal');
rand(1)
distribution=zeros(1,1000);

for i=1:1000
    distribution(1,i) =rand+rand;
end
boxplot(distribution);
