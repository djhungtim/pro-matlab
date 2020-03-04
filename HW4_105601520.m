

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

c = [dia,mas,dis,per,rot,gra];%¯BÂI¼Æ¯x°}
s = [com,rin];%¦r¦ê¯x°}

r = [ple;dia;mas;dis;per;rot;gra;com;rin];

formatSpec = '     %s %s %s %s %s %s %s %s \n dia %f %f %f %f %f %f %f %f\n mas %f %f %f %f %f %f %f %f\n dis %f %f %f %f %f %f %f %f\n per %f %f %f %f %f %f %f %f\n rot %f %f %f %f %f %f %f %f\n gra %f %f %f %f %f %f %f %f\n com %s %s %s %s %s %s %s %s\n rin %s %s %s %s %s %s %s %s\n';
fprintf(formatSpec,ple,c,s);

A = r(2:9,2)
B = r(2:9,6)

C = cat(1,A,B)

X = rand(size(c),'like',c)

