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
          
                reward = normrnd(0,1)+obj.q;
                
            
%                           reward =obj.q;
        end
        function obj=Arm(T, q0)
            obj.q=0;
            obj.Q= q0*ones(1,T);
            obj.R=zeros(1,T);
            obj.N=zeros(1,T);
            obj.H=0;
        end
    end
end
