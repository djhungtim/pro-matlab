


clc
clear 
close all

load planets.mat
all = [distance;moons];

tic
[row,col] = find(all,6);%find index of the array of the distance >5AU & moons >0
toc

dis = zeros(1,length(distance));%initial array
moo = zeros(1,length(moons));
k1=zeros(1,length(distance));%initial index array
k2=zeros(1,length(moons));

tic
for i = 1:length(distance)
    if distance(i) <= 5
        dis(i) = distance(i);
        k1(i) = i;
    else
        dis(i) = nan;
        k1(i) = nan;
    end
end

for i = 1:length(moons)
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

subplot(2,2,1)

[x,y] = meshgrid(-4:.1:4,-4:.1:4);
z = exp(-(x.^2+y.^2)/4);

contourf(x,y,z,'color','k')
hold on
plot([-4,4],[0,0],'r','LineWidth',1)

xlim([-4 4])
ylim([-4 4])
axis square
title('Original Filled Contour')
xlabel('x')
ylabel('y')

colormap summer

subplot(2,2,2)

x = -4:.1:4;
y = zeros(1,length(x));
z = exp(-(x.^2+y.^2)/4);

plot(x,z,'r')
title('Profile at y = 0')
xlabel('x')
ylabel('value')
xlim([-4 4])
ylim([0 1])
axis tight

subplot(2,2,3)

[x,y] = meshgrid(-4:.1:4,-4:.1:4);
z = exp(-(x.^2+y.^2)/4);
v = zeros(length(x),length(y));
for i = 1:length(x)
    for j = 1:length(y)
        if z(i,j) < 0.6
            z(i,j) = nan;
        else
            v(i,j) = z(i,j);
        end
    end
end
contourf(x,y,v,'color','k')
hold on
plot([-4,4],[0,0],'r','LineWidth',1)
xlim([-4 4])
ylim([-4 4])
axis square
title('New filled Contour')
xlabel('x')
ylabel('y')


subplot(2,2,4)

x = -4:.1:4;
y = zeros(1,length(x));
z = exp(-(x.^2+y.^2)/4);
v = zeros(1,length(x));

for i = 1:length(x)
    
    if z(i) < 0.6
        z(i) = nan;
    else
        v(i) = z(i);
    end
    
end

plot(x,v,'r')
title('Profile at y = 0')
xlabel('x')
ylabel('value')
xlim([-4 4])
ylim([0 1])
axis normal


