


clc
clear

load planets.mat

composition = rot90(composition,3);
density = rot90(density,3);
diameter = rot90(diameter,3);
distance = rot90(distance,3);
eccentricity = rot90(eccentricity,3);
escape = rot90(escape,3);
gravity = rot90(gravity,3);
inclination = rot90(inclination,3);
mass = rot90(mass,3);
moons = rot90(moons,3);
name = rot90(name,3);
period = rot90(period,3);
rings = rot90(rings,3);
rotation = rot90(rotation,3);
temperature = rot90(temperature,3);
velocity = rot90(velocity,3);

T = table(composition,density,diameter,distance,...
    eccentricity,escape,gravity,inclination,mass,moons,...
    name,period,rings,rotation,temperature,velocity);

writetable(T,'planets.csv.csv','Delimiter',',','QuoteStrings',true)
type 'planets.csv.csv'


