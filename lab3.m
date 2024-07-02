%% Week 3

%% Exercise 1

%% a
% i
binopdf(5,20,0.35)

% ii
binocdf(1,20,0.35)-binocdf(4,0,0.35)

% iii
binocdf(15,20,0.35)-binocdf(5,20,0.35)

% iv
sum(binopdf([1 5 9 17],20,0.35))

% v
1-sum(binopdf([5 13 16],20,0.35))

%% b
% i
binopdf(10,10,0.2)

% ii
1-binocdf(4,10,0.2)

% iii
1-binopdf(0,3,0.0328)

%% Exercise 2

%% a
% i
poisscdf(3,7)

% ii
poisscdf(2,7)

% iii
sum(poisspdf([19 20],7))

% iv
1-poisspdf(0,7)

%% b
% i
1-poisscdf(1,1)

% ii
-log(0.05)
16*2.9957

n=1:10
1-poisspdf(0,n)

%% Exercise 5
%% a
% i
normcdf(1)-normcdf(-1)

% ii
normcdf(2)-normcdf(-2)

% iii
normcdf(3)-normcdf(-3)

% v
norminv(0.95)

% vi
norminv(0.975)

% vii
norminv(0.995)

%% b
% i
normcdf(4,3,2)-normcdf(2,3,2)

% ii
normcdf(4,3,2)-normcdf(2,3,2)

%% c
% i
