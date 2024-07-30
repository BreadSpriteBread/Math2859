%% Analysis of variance

% boxplot(dtime,period);

% fit linear model mwith period as a categorical predictor

model=fitlm(period,dtime,'CategoricalVars',1)
anova(model)

% finding pValue manually
pValue=1-fcdf(20.72,2,21)

% Hypothesis Ho: u1=u2=u3 vs Ha: Not all means are equal

% since the pvalue is very small, there is strong evidence that time of day
% affects average download time.

%% Model assumptions

% errors are normally distrubuted
plotResiduals(model, 'probability')

%%
% errors have equal variance across groups
plotResiduals(model, 'fitted')

%%
% independent within between treatments. this dependings on study design
sd = grpstats(dtime,period,'std')
sd(1)/sd(3)










































