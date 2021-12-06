clear all
close all
clc

nx=10;
ny=6;
xtarget=8;
A=4;
ytarget=4;
wind = [0 0 0 1 1 1 2 2 1 0];
epsilon=0.1;
alpha=0.1;
gamma = 1;
starget = sub2ind([nx,ny],xtarget,ytarget);
update = @(s,a) windy(s,a,nx,ny,wind);
%Sarsa
S=nx*ny;
Q1=zeros(S,A);
Q2=zeros(S,A);

numEpisodes = 1e4;
G=0;
traj = [];
for i = 1:numEpisodes
    s=sub2ind([nx,ny],2,4);
    traj = s;
    while s~=starget
        Q=1/2*(Q1+Q2);

        a=epsGreedy(Q(s,:),epsilon);

        [sp,r]=update(s,a);
        traj = [traj,sp];
        if rand<0.5
            apmax = find(Q1(sp,:)==max(Q1(sp,:)),1,'first');
            Qp = Q2(sp,apmax);
            Q1(s,a)=Q1(s,a)+alpha*(r+gamma*Qp-Q1(s,a));
            
        else
            apmax = find(Q2(sp,:)==max(Q(sp,:)),1,'first');
            Qp=Q1(sp,apmax);
            Q2(s,a)=Q2(s,a)+alpha*(r+gamma*Qp-Q2(s,a));
        end
        Qp=max(Q(sp,:));
%         Q(s,a)=Q(s,a)+alpha*(r+gamma*Qp-Q(s,a));
        s=sp;
        G = G+r;
    end
    if mod(i,100)==0
        [xx,yy]=ind2sub([nx ny],traj);
        clc
        plot(xx,yy);
        xlim([1,nx]);
        ylim([1,ny]);
        pause(1);
    end
end



