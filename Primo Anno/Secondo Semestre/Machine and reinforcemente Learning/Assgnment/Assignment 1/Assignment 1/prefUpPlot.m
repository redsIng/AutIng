function prefUpPlot(symTime, R, vNa, arms, Ha)
% Rewards at time t
figure()
subplot(2,1,1)
for i = 1:size(R,1)
    plot(symTime,R(i,:));
    hold on
end
legend('\alpha = 0.01','\alpha = 0.05','\alpha = 0.08','\alpha = 0.5', '\alpha = 1', 'Location','southwest');
xlabel('t', 'Interpreter', 'latex');
ylabel('R(t)', 'Interpreter', 'latex');
title('Preference Update Algorithm');


% Action Selected
subplot(2,1,2)
bar(vNa');
xlabel('Bandit Number');
ylabel('Choice Counter');
title('Decision Counters for Preference Update Algorithm');
legend('\alpha = 0.01','\alpha = 0.05','\alpha = 0.08','\alpha = 0.5', '\alpha = 1', 'Location','northwest');

figure()
% Preferences at time t
% for i = 1:size(R,1)
select=zeros(size(Ha,1)/size(R,1),size(Ha,2),size(R,1));
select(:,:,1) = Ha(1:10,:);
select(:,:,2) = Ha(11:20,:);
select(:,:,3) = Ha(21:30,:);
select(:,:,4) = Ha(31:40,:);
select(:,:,5) = Ha(41:50,:);
select(:,:,6) = Ha(51:60,:);
alphaTxt=["\alpha = 0.01","\alpha = 0.05","\alpha = 0.08","\alpha = 0.5","\alpha = 0.8", "\alpha = 1"];
for j = 1:size(select,3)
    subplot(3,2,j)
    plot(symTime, select(:,:,j))
    title('Preferences:'+alphaTxt(j))
    legend('H(1)','H(2)','H(3)','H(4)', 'H(5)', 'H(6)','H(7)','H(8)','H(9)','H(10)','Location','southwest','NumColumns',2);
    xlabel('t', 'Interpreter', 'latex');
    ylabel('H(a)_t');
    hold on
end
% end
end
