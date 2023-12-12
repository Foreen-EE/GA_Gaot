%% I. 清空环境变量
clear all
clc
close all

%% II. 绘制函数曲线
x = 0:0.01:11;
y =  11*sin(7*x)+7*cos(3*x);

figure
plot(x, y)
xlabel('自变量')
ylabel('因变量')
title('y = 11*sin(7*x)+7*cos(3*x)')


%% III. 初始化种群
initPop = initializega(50,[0 11],'fitness');

%% IV. 遗传算法优化
[x endPop bpop trace] = ga([0 11],'fitness',[],initPop,[1e-6 1 1],'maxGenTerm',35,...
                           'normGeomSelect',0.08,'arithXover',2,'nonUnifMutation',[2 35 3]);


%% V. 输出最优解并绘制最优点
x
hold on
plot (endPop(:,1),endPop(:,2),'ro')

%% VI. 绘制迭代进化曲线
figure(2)
plot(trace(:,1),trace(:,3),'b:')
hold on
plot(trace(:,1),trace(:,2),'r-')
xlabel('Generation'); ylabel('Fittness');
legend('Mean Fitness', 'Best Fitness')

