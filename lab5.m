%% Lab 5

qqplot(shearstrength);
histogram(shearstrength,10,'Normalization','pdf');

xbar = mean(shearstrength);
data = shearstrength;
n = length(shearstrength);
sigma=350;
% 95% confidence interval default
[h, p, ci] = ztest(shearstrength, xbar, sigma); ci

% 98% confidence interval, custom value
[h, p, ci] = ztest(shearstrength, xbar, sigma, 'Alpha', 0.02); ci

% CI for when sigma is unknown
% 95% confidence inteval for the population. we are using T distribution we
% do not know SIGMA
[h, p, ci] = ttest(shearstrength, xbar); ci

% you can also do it the hard way aka the formula
s = std(shearstrength)

[xbar-norminv(0.975)*sigma/sqrt(n),xbar+norminv(0.975)*sigma/sqrt(n)]
[xbar-tinv(0.975,n-1)*s/sqrt(n),xbar+tinv(0.975,n-1)*s/sqrt(n)]

% Q2
qqplot(porevolume);
xbar = mean(porevolume);

[h, p, ci] = ttest(porevolume, xbar, 'Alpha', 0.02); ci

[h, p, ci] = ttest(porevolume, xbar, 'Alpha', 0.05); ci

% Q3
phat = 140/171
n = 171

zstar = norminv(0.995)
[phat-zstar*sqrt(phat*(1-phat)/n), phat+zstar*sqrt(phat*(1-phat/n))]

n*phat*(1-phat)









