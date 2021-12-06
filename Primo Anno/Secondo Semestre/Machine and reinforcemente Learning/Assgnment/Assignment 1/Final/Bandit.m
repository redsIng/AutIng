classdef Bandit
    properties
        q0
        q
        Q
        R
        N
        H
        stat
    end
    methods
        function obj = Bandit(q0,T,chars)
            obj.stat = chars;
            obj.q0 = q0;
            obj.q = zeros(1,T);
            obj.q(1) = q0;
            obj.Q = zeros(1, T);
            if chars == "UCB"
                obj.Q(1) = 10*q0;
            end
            obj.R = zeros(1,T);
            obj.N = zeros(1,T);
            obj.H = zeros(1,T);
        end
        function [rew, qt] = bandit(obj,t)
            if obj.stat == "stat"
                qt = obj.q0;
                rew = qt;
            else
                qt = normrnd(obj.q0, 1);
%                 qt = normrnd(obj.q0, randi(obj.q0*2));
%                 qt = obj.q(t-1) + normrnd(0,1);
                rew = normrnd(qt, 0.5);
            end
        end
    end
end