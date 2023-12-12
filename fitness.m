function [sol, fitnessVal] = fitness(sol, options)

x = sol(1);

fitnessVal = 11*sin(7*x)+7*cos(3*x);

end

