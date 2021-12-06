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
        function obj = walk(obj,t,value,stat)
            if stat == 0%stationary
                obj.q(1,t) = value;
            else%Not-Stationary
                obj.q(1,t) =obj.q(1,t-1)+ normrnd(value,0.5);
            end
        end
        function reward=bandit(obj,t)
            reward =normrnd(obj.q(1,t),0.5);
        end
        function obj=Arm(T)
            obj.q=zeros(1,T);
            obj.Q= zeros(1,T);
            obj.R=zeros(1,T);
            obj.N=zeros(1,T);
            obj.H=0;
        end
    end
end

