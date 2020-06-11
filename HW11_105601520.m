

clc
clear 

load planets.mat

for idx = 1:8
planets8(idx).composition = composition(1,idx);
planets8(idx).density = density(1,idx);
planets8(idx).diameter = diameter(1,idx);
planets8(idx).distance = distance(1,idx);
planets8(idx).eccentricity = eccentricity(1,idx);
planets8(idx).escape = escape(1,idx);
planets8(idx).gravity = gravity(1,idx);
planets8(idx).inclination = inclination(1,idx);
planets8(idx).mass = mass(1,idx);
planets8(idx).moons = moons(1,idx);
planets8(idx).name = name(1,idx);
planets8(idx).period = period(1,idx);
planets8(idx).rings = rings(1,idx);
planets8(idx).rotation = rotation(1,idx);
planets8(idx).temperature = temperature(1,idx);
planets8(idx).velocity = velocity(1,idx);
save('planets_struct16.mat', 'planets8')
end


%% problem 2


T = readtable('iris.csv');
% 
% data(strcmp(data.aVarWithNames,'theRowIWant'),:)
Virginica = T(strcmp(T.variety,'Virginica'),:);
Setosa = T(strcmp(T.variety,'Setosa'),:);
Versicolor = T(strcmp(T.variety,'Versicolor'),:);



