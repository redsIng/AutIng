%% eGreedy Method
% function [act, qopt, k] =eGreedy(arms,epsilon,t)
function [act] =eGreedy(arms,epsilon,t)
Q = zeros(1,size(arms,2));
% c = zeros(1,size(arms,2));
p=rand;
% if p<epsilon
%     act=randi(size(arms,2)); %Exploring
% else
%     for a=1:size(arms,2)
%         avg=arms(a).Q(1,t);
%         Q(1,a)=avg; %Exploiting
%
% %           Q(1,a)=sampleAverage(arms(a));
%     end
%     [~,index]=max(Q);
%     act=index;
% end
for a=1:size(arms,2)
    avg=arms(a).Q(1,t);
%     c(1,a) = arms(a).q;
    Q(1,a)=avg; %Exploiting
    %           Q(1,a)=sampleAverage(arms(a));
end
% [qopt, k] = max(c);
if p<epsilon
    act=randi(size(arms,2)); %Exploring
else
    [~,index]=max(Q);
    act=index;
end
end
