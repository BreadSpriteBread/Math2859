% Excercise 2 

% a

histogram(Inflow)
xlabel("inflow cubic metres per second")
ylabel("frequency")

% b

mean(Inflow)
var(Inflow)
std(Inflow)
quantile(Inflow,[0 0.25 0.6 0.75 1])

%c

histogram(Inflow, 50, "Normalization", "pdf");

edges = [0 500 1500 3000 6500];
histogram(Inflow, edges, "Normalization","pdf")
% Frequency histogram is one with no parameters
% histogram(Inflow, edges)asd

% Excercise 3

AgeUS = Age(strcmp(Country, "US"));
plot(AgeUS)
boxplot(AgeUS)
boxplot(AgeUS, Country, "Orientation","vertical")