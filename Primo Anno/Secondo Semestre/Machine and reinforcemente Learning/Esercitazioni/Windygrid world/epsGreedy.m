function  a=epsGreedy(Q,epsilon)
if rand<eps
    a=randi(length(Q),1);
else
    a=find(Q==max(Q),1,'first');
end
end
