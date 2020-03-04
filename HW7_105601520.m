

clc
clear 
close all

load planets.mat

x = load('planets.mat','moons');
y = load('planets.mat','diameter');
z = load('planets.mat','mass');

X = load('planets.mat','distance'); 
X1 = cell2mat(struct2cell(X));
X2 = X1(1,2);
Y = load('planets.mat','eccentricity'); 
Y1 = cell2mat(struct2cell(Y));
Y2 = Y1(1,2);

x1 = cell2mat(struct2cell(x));%converse
y1 = cell2mat(struct2cell(y));
z1 = cell2mat(struct2cell(z));

z2 = z1(1,[5 6 8]);

subplot(2,2,1)
bar(x1)
title('Number of moons')
ylabel('Number of moons');
xposi = 1:1:8;
yposi = (0-1)*ones(1,8);
set(gca,'XTickLabel',[])
text(xposi,yposi,{'Mercury','Venus','Earth', 'Mars', 'Jupiter', 'Saturn','Uranus','Neptune'},...
'HorizontalAlignment','right','rotation',90);
ylim([0 80])

subplot(2,2,2)
bar(y1)
title('Planet diamemter')
ylabel('Planet diamemter(earth = 1)')
set(gca,'XTickLabel',[])
text(xposi,yposi,{'Mercury','Venus','Earth', 'Mars', 'Jupiter', 'Saturn','Uranus','Neptune'},...
'HorizontalAlignment','right','rotation',90);
ylim([0 15])


subplot(2,2,3)
labels = {'Jupiter','Saturn','Neptune'};
pie(z2,labels)
title('mass percentage')
colormap prism

subplot(2,2,4)
f = 0:0.001:2*pi;
R = (Y2*X2)./(1+Y2*sin(f));
X3 = R.*sin(f)*1e2;
Y3 = R.*cos(f)*1e2;
plot(X3,Y3)
title('Orbit of venus')
grid on
xlim([-1 1])
ylim([-1 1])


