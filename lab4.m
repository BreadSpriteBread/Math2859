%% Simulating bernuli variables
% Simulate 1 bernuli variable
B = binornd(1,0.5, [10 1]);
mean(B)

B = binornd(1,0.5, [100 500]);
meanB = mean(B)

% We know that the meanB, should be close to 0.5
% because we know from the central limit theorm 0.25/100 = 0.0025

mean(meanB)
var(meanB)

figure
histogram(meanB, 15, 'normalization', 'pdf');

histfit(meanB, 15, 'normal');
qqplot(meanB);

%% Kevlar dataset
T = exprnd(mean(kevlar1), [10 1000]);
meanT = mean(T);
mean(meanT);
var(meanT);

histogram(meanT, 30, 'normalization', 'pdf')
histfit(meanT,30,'normal')

% now the same thing but with a bigger sample size
T = exprnd(mean(kevlar1), [500 1000]);
meanT = mean(T);
mean(meanT);
var(meanT);

histogram(meanT, 30, 'normalization', 'pdf')
histfit(meanT,30,'normal')
T = exprnd(mean(kevlar1), [10 1000]);
meanT = mean(T);
mean(meanT);
var(meanT);

histogram(meanT, 15, 'normalization', 'pdf')
histfit(meanT,15,'normal')

qqplot(meanT)