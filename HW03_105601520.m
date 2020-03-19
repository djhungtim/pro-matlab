


clc
clear

ple = ["Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Urans" "Neptune"];

dia = [0.38 0.949 1 0.532 11.209 9.44 4.007 3.883];
mas = [0.055 0.815 1 0.107 318 95 15 17];
dis = [0.39 0.72 1 1.52 5.20 9.54 19.18 30.06];
per = [0.24 0.62 1 1.88 11.86 29.46 84.01 164.8];
rot = [58.65 -243 1 1.03 0.41 0.44 -0.72 0.72];
gra = [0.38 0.9 1 0.38 2.64 0.93 0.89 1.12];
com = ["none" "CO2" "N2+O2" "CO2" "H2+He" "H2+He" "H2+He" "H2+He"];
rin = ["no" "no" "no" "no" "yes" "yes" "yes" "yes"];

c = [dia,mas,dis,per,rot,gra];%�B�I�Ưx�}
s = [com,rin];%�r��x�}

r = [dia;mas;dis;per;rot;gra;com;rin];

formatSpec = '     %s %s %s %s %s %s %s %s \n dia %f %f %f %f %f %f %f %f\n mas %f %f %f %f %f %f %f %f\n dis %f %f %f %f %f %f %f %f\n per %f %f %f %f %f %f %f %f\n rot %f %f %f %f %f %f %f %f\n gra %f %f %f %f %f %f %f %f\n com %s %s %s %s %s %s %s %s\n rin %s %s %s %s %s %s %s %s\n';
fprintf(formatSpec,ple,c,s)
%%

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
formatSpec = "                                                            %s  %s  %s  %s  %s  %s  %s  %s \n mean distance from the Sun (AU)   %4.2f         %4.2f     %4.2f     %4.2f   %4.2f       %4.2f     %4.2f  %4.2f \n rotation period (in Earth days)       %4.2f       %4.0f     %4.2f     %4.2f   %4.2f        %4.2f     %4.2f   %4.2f \n atmospheric composition               %s       %s      %s %s  %s  %s  %s  %s\n rings?                                                %s            %s         %s        %s     %s          %s       %s    %s\n"; %create formSpec for fprintf
fprintf(formatSpec, name, mean_distance_from_the_Sun_AU, rotation_period_in_Earth_days, atmospheric_composition, rings) % print text

%problem3
x = [1 2 3 4];
y = [4 3 2 1];

