%% eGreedy Method
function act=eGreedy(arms,epsilon,t)
Q=zeros(1,size(arms,2));
p=rand;
if p<epsilon
    act=randi(size(arms,2)); %Exploring
else
    for a=1:size(arms,2)
        avg=arms(a).Q(1,t);
        Q(1,a)=avg; %Exploiting
          
%           Q(1,a)=sampleAverage(arms(a));
    end
    [~,index]=max(Q);
    act=index;
end
end
