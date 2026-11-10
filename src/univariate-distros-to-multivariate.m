% Combine three univariate distributions into a multivariate distribution.

% Release all variables from the current workspace, clearing memory.
clear

% Random number seeding.
rng('default');
rng(1);

% Create three 1-by-100 vectors of normally distributed random numbers.
% Give each distribution a unique mean and standard deviation.
mean_A = -1;
mean_B = 0;
mean_C = 1;
%
std_dev_A = 0.25;
std_dev_B = 0.50;
std_dev_C = 0.75;
%
vals_per_variable = 100;
vec_rand_A = std_dev_A.*randn(vals_per_variable, 1) + mean_A;
vec_rand_B = std_dev_B.*randn(vals_per_variable, 1) + mean_B;
vec_rand_C = std_dev_C.*randn(vals_per_variable, 1) + mean_C;

% Calculate covariance.
CovAB = (vec_rand_A - mean(vec_rand_A))'*(vec_rand_B - mean(vec_rand_B)) / (vals_per_variable - 1);
CovBA = CovAB;
CovAC = (vec_rand_A - mean(vec_rand_A))'*(vec_rand_C - mean(vec_rand_C)) / (vals_per_variable - 1);
CovCA = CovAC;
CovBC = (vec_rand_B - mean(vec_rand_B))'*(vec_rand_C - mean(vec_rand_C)) / (vals_per_variable - 1);
CovCB = CovBC;
cov_combined = [var(vec_rand_A) CovAB           CovAC; ...
                CovBA           var(vec_rand_B) CovBC; ...
                CovCA           CovCB           var(vec_rand_C)];

% Plot 1000 random samples from the combined distribution.
% Assumes: the contributing distributions are Gaussian.
% Assumes: the Statistics and Machine Learning Toolbox is installed.
rnd_samples = mvnrnd([mean_A mean_B mean_C], ...
                     cov_combined, 1000);
scatter3(rnd_samples(:,1), rnd_samples(:,2), rnd_samples(:,3));
