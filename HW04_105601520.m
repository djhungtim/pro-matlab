

% problem 1.
clc
clear

%create variables
mean_distance_from_the_Sun_AU = [0.39, 0.72, 1, 1.52, 5.2, 9.54, 19.18, 30.06];
rotation_period_in_Earth_days = [58.65, -243, 1, 1.03, 0.41, 0.44, -0.72, 0.72];

%combine two double vector to one matrix
float_matrix = [mean_distance_from_the_Sun_AU; rotation_period_in_Earth_days]; 

% extract data from float matrix to two new two variables
mercury = float_matrix(:, 1);
jupiter = float_matrix(:, 5);

new_float_matrix = cat(2, mercury, jupiter);

% problem 2.
% create a matrix with rand range from 3 to 10
random_3_10 = rand(5).*10 ;
random_3_10(random_3_10 < 3) = 0;
round(random_3_10)

%problem 3.
r = [1, 2, 3, 4]; %radius
theta = pi/6;
phi = pi/3;

% transform sph. to cart. coord.
cartX = r.*sin(theta).*cos(phi);
cartY = r.*sin(theta).*sin(phi);
cartZ = r.*cos(theta);

% 4 points of XYZ each row represent one point
XYZ = [cartX' cartY' cartZ'];

% transform cart. to cyli. coord.
rho = sqrt((cartX.^2 + cartY.^2));
phi_cyli = atan(cartY./cartX);
Z = cartZ;

% 4 points of RhoPhiZ each row represent one point
RhoPhiZ = [rho' phi_cyli' Z'];
