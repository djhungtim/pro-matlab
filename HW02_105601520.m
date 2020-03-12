

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

% ihead, jhead, khead are unit vector and orthogonal to each other
ihead = [1 0 0];
jhead = [0 1 0];
khead = [0 0 1];

% create three vector named A,B,C
A = 2*ihead + 3*jhead + 1*khead;
B = 4*ihead + 6*jhead + 2*khead;
C = 3*ihead + 4*jhead + 2*khead;

% calculate vector size of A,B
size_of_A = sqrt(sum(A.^2));
size_of_B = sqrt(sum(B.^2));

% calculate unit vector of A,B
unit_vector_A = A/size_of_A;
unit_vector_B = B/size_of_B;

% calculate inner product of vector A and C
inner_product_of_vector_AC = A(1)*C(1) + A(2)*C(2) + A(3)*C(3); 

% calculate angle between A,B and A,C in rad.
angle_AB = acos((A(1)*B(1) + A(2)*B(2) + A(3)*B(3))/(size_of_A*size_of_B));
angle_AC = acos((inner_product_of_vector_AC) / (size_of_A*sqrt(sum(C.^2))));

% calculate outer product of A,C
outer_product_of_vector_AC = [(A(2)*C(3) - A(3)*C(2)), (A(3)*C(1) - A(1)*C(3)), (A(1)*C(2) - A(2)*C(1))];


