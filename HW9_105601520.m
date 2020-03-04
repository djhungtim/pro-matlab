


clc
clear 

load planets.mat
all = [distance;moons];

tic
[row,col,v] = find(all,6);%find index of the array of the distance >5AU & moons >0
toc

dis = [];%initial array
moo = [];
k1=[];%initial index array
k2=[];

tic
for i = 1:8
    if distance(i) <= 5
        dis(i) = distance(i);
        k1(i) = i;
    else
        dis(i) = nan;
        k1(i) = nan;
    end
end

for i = 1:8
    if moons(i) > 0
        moo(i) = moons(i);
        k2(i) = i;
    else
        moo(i) =nan;
         k2(i) = nan;
    end
end

all2 = [k1;k2];%equals to find function 

toc






