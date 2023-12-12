%% I. ��ջ�������
clear all
clc
close all

%% II. ���ƺ�������
x = 0:0.01:11;
y =  11*sin(7*x)+7*cos(3*x);

figure
plot(x, y)
xlabel('�Ա���')
ylabel('�����')
title('y = 11*sin(7*x)+7*cos(3*x)')


%% III. ��ʼ����Ⱥ
initPop = initializega(50,[0 11],'fitness');

%% IV. �Ŵ��㷨�Ż�
[x endPop bpop trace] = ga([0 11],'fitness',[],initPop,[1e-6 1 1],'maxGenTerm',35,...
                           'normGeomSelect',0.08,'arithXover',2,'nonUnifMutation',[2 35 3]);


%% V. ������ŽⲢ�������ŵ�
x
hold on
plot (endPop(:,1),endPop(:,2),'ro')

%% VI. ���Ƶ�����������
figure(2)
plot(trace(:,1),trace(:,3),'b:')
hold on
plot(trace(:,1),trace(:,2),'r-')
xlabel('Generation'); ylabel('Fittness');
legend('Mean Fitness', 'Best Fitness')

