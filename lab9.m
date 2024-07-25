rainfall=rain(:,1);
runoff=rain(:,2);

figure
scatter(rainfall,runoff)
xlabel('rainfall')
ylabel('runoff')


% fit simple linear regression model
% Y = b0 + b1 * x + epsilon

%% fit the simple linear regression model

rainmod = fitlm(rainfall, runoff)

%% Equation of the fitted line is
% yhat = -327.12 + 0.91946 x

pvalue=2*tcdf(-10.298,29)

% we conclude that rainfall amount has a significant influence on the
% runoff

rainmod.RMSE

%% v)
coefCI(rainmod)

% 95% ci for the slope coefficient betal...

% 98% ci
coefCI(rainmod, 0.02)

%% find sample correlation coefficient
r = sqrt(rainmod.Rsquared.Ordinary)

%% Assumptions

subplot(1,2,1)
plotResiduals(rainmod,'fitted')
subplot(1,2,2)
plotResiduals(rainmod,'probability')

%% 99% ci for mean of y when x = 30

[ypred, yci] = predict(rainmod, 1100, 'alpha', 0.01, 'Prediction', 'observation')