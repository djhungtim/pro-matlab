
% problem 1.
clc
clear 
%create variables
mean_distance_from_the_Sun_AU = [0.39, 0.72, 1, 1.52, 5.2, 9.54, 19.18, 30.06];
rotation_period_in_Earth_days = [58.65, -243, 1, 1.03, 0.41, 0.44, -0.72, 0.72];
atmospheric_composition = ["none", "CO2", "N2+O2", "CO2", "H2+He", "H2+He", "H2+He", "H2+He"];
rings = ["no", "no", "no", "no", "yes", "yes", "yes", "yes"];

float_matrix = [mean_distance_from_the_Sun_AU; rotation_period_in_Earth_days]; %combine two double vector to one matrix
string_matrix = [atmospheric_composition; rings]; %combine two string vector to one matrix

%problem2

name = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Urans", "Neptune"];
fprintf('                                                    ')
fprintf('\t%-12s', name)
fprintf('\n')
fprintf('mean distance from the Sun (AU)')
fprintf('\t%4.2f\t',mean_distance_from_the_Sun_AU)
fprintf('\n')
fprintf('rotation period (in Earth days)\t')
fprintf('\t%4.2f\t',rotation_period_in_Earth_days)
fprintf('\n')
fprintf('atmospheric composition\t')
fprintf('\t%-12s', atmospheric_composition)
fprintf('\n')
fprintf('rings? \t\t\t\t')
fprintf('\t%-12s', rings)


%problem3
x = [1 2 3 4];
y = [4 3 2 1];

o = zeros(1, 4); %origin point

for idx = 1:4
rho(idx) = sqrt( (x(idx) - o(idx))^2 + (y(idx) - o(idx))^2 ); %calculate distance between origin point
end

for idx = 1:4
rx(idx) = sqrt( (x(idx) - o(idx))^2 ); %calculate distance between x axis
end

for idx = 1:4
ry(idx) = sqrt( (y(idx) - o(idx))^2 ); %calculate distance between y axis
end

the_sine = ry./rho; 

theta = asin(the_sine); % find angle for each point

x2 = rho.*(cos(theta)); % transfer
y2 = rho.*(sin(theta)); % transfer

is_x_equal = x == x2; % check if equal
is_y_equal = y == y2; % check if equal

