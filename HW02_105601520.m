

% problem 1.
clc
clear 
%create variables
mean_distance_from_the_Sun_AU = [0.39, 0.72, 1, 1.52, 5.2, 9.54, 19.18, 30.06];
rotation_period_in_Earth_days = [58.65, -243, 1, 1.03, 0.41, 0.44, -0.72, 0.72];
atmospheric_composition = ["none", "CO2", "N2+O2", "CO2", "H2+He", "H2+He", "H2+He", "H2+He"];
rings = ["no", "no", "no", "no", "yes", "yes", "yes", "yes"];

var_of_workspace = who; % stores information about the variables in the cell array
num_of_workspace = numel(var_of_workspace); %the number of elements
disp(num_of_workspace); % disp number of elements

%%

% problem 2. 