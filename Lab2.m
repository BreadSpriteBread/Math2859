% EX 2

sample=rand(10,1);
max(sample)

samples=rand(10,1000);
maxs=max(samples);

figure
histogram(maxs,0:0.05:1,'Normalization','pdf')
title('Histogram asd')

hold on
y=0:0.01:1;
fy=10*y.^9;
plot(y,fy,'r')
hold off

% EX 4

% Exponential distribution with parameter 46
% the parameter is also actually the mean

x=0:0.1:300;
fx=1/46 * exp(-x/46);
figure
plot(x,fx)

% Probability that there will be no accidents in the next 30 days
1 - expcdf(30, 46)


dat = exprnd(46,[1000000,1])

figure
histogram(dat,'Normalization','pdf')

hold on
plot(x,fx,'b','Linewidth',1)
hold off

mean(dat)
