%% Banditi
classdef Arm
    properties
        q
        Q
        R
        N
        H
    end
    methods
        function average = sampleAverage(obj)
            if obj.N ==0
                average=0;
            else
                average = sum(obj.R,'all')/obj.N;
            end
        end
        function reward=bandit(obj)
            reward = normrnd(0,3)+obj.q;
            
        end
        function obj=Arm(T)
            obj.q=0;
            obj.Q=zeros(1,T);
            obj.Q(1,1)=100;
            obj.R=zeros(1,T);
            obj.N=0;
            obj.H=0;
        end
    end
end
