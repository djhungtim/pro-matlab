

clc
clear
i = [];


for idx = 1:8
load planets.mat

composition = composition(1,idx);
density = density(1,idx);
diameter = diameter(1,idx);
distance = distance(1,idx);
eccentricity = eccentricity(1,idx);
escape = escape(1,idx);
gravity = gravity(1,idx);
inclination = inclination(1,idx);
mass = mass(1,idx);
moons = moons(1,idx);
period = period(1,idx);
rings = rings(1,idx);
rotation = rotation(1,idx);
temperature = temperature(1,idx);
velocity = velocity(1,idx);

name = name(1,idx);
newname = lower(name);

filename = newname + string(idx);
save(filename,'composition','density',...
'diameter','distance','eccentricity','escape','gravity','inclination',...
'mass','moons','name','period','rings','rotation','temperature','velocity')
end



%%


load ionosphere.mat


xrandom = randi([1 351], 1, 246);
yrandom = xrandom;

xtest = randi([1 351], 1, 105);
ytest = xtest;

X_train = X(xrandom, :);
Y_train = Y(yrandom, :);

X_test = X(xtest, :);
Y_test = Y(ytest, :);
