

clc
clear 
close all

load planets.mat %load data

subplot(2,2,1)
y1 = moons;
bar(y1,'b')
xposi = 1:1:8;
yposi = (0-1)*ones(1,8);
set(gca,'XTickLabel',[])
text(xposi,yposi,{'Mercury','Venus','Earth', 'Mars', 'Jupiter', 'Saturn','Uranus','Neptune'},...
'HorizontalAlignment','right','rotation',90);
ylim([0 80])
title('Number of moons')
ylabel('Number of moons')


subplot(2,2,2)
y2 = mass(1,[5 6 8]);
labels = {'Jupiter','Saturn','Neptune'};
pie(y2,labels)
title('Mass percentage')
colormap([1 0 0;0 0 1;0 1 0])


subplot(2,2,3)
t = 0:.01:2*pi;
a = distance(1,1);
e = eccentricity(1,1);
b = sqrt(a^2*(1-e^2));
c = sqrt((a^2 - b^2));
x1 = c + a*cos(t);
y3 = b*sin(t);
plot(x1,y3)
xlim([-0.5 0.5])
ylim([-0.5 0.5])
grid on
axis square
title('Orbit of Mercury')
xlabel('x(AU)')
ylabel('y(AU)')


subplot(2,2,4)
[x,y] = meshgrid(-4:1:4,-4:1:4);
z = exp(-(x.^2+y.^2)/4);
[dx,dy] = gradient(z,.2,.2);
contour(x,y,z,'color','blue')
hold on
quiver(x,y,dx,dy,'color','red')
hold off
xlim([-4 4])
ylim([-4 4])
axis square
title('Contours and Gradients')
xlabel('x(km)')
ylabel('y(km)')

