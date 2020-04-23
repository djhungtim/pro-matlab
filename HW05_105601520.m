

% HW 5
% 105601520

clc
clear
close all

load planets % load data

subplot(2,2,1)
x1 = distance./period;
y1 = velocity;
plot(x1,y1, 'dm')
ylim([0 50]);
xlabel('Distance/Period')
ylabel('Orbital velocity(km/sec)')
grid on

subplot(2,2,2)
x2 = escape;
y2 = mass;
plot(x2,y2,'or')
ylim([0 400]);
xlabel('Escape velocity(km/sec)')
ylabel('Mass (Earth = 1)')
box off

subplot(2,2,3)
x3 = diameter;
y3 = escape;
xlim([0 12])
plot(x3,y3, 'og')
xlabel('Diameter (Earth = 1)')
ylabel('Escape velocity(km/sec)')

subplot(2,2,4)
xarrow = mArrow3([0 0 0],[5 0 0], 'color','red','stemWidth',0.05);
yarrow = mArrow3([0 0 0],[0 5 0], 'color','red','stemWidth',0.05);

text(2.5, -0.5, 'x','color','r')
text(-0.5, 2.5, 'y','color','r')

hold on 
plot(2, 3, 'ok','MarkerSize',3, 'Linewidth', 3)
text(2, 3, '  (2,3)') %point
plot([2, 2], [0, 3], 'k:')  %vertical line
plot([0, 2], [3, 3], 'k:')  %horizontal line
hold off

arrowx = [5;0];
arrowy = [0;5];
theta = pi/6;
rot_matrix = [cos(theta) -sin(theta); sin(theta) cos(theta)];
arrowx_new = rot_matrix*arrowx;
arrowy_new = rot_matrix*arrowy;

a = [2; 3];

b = arrowx_new;
c = b.* (dot(a, b)/ (b(1)^2 + b(2)^2)); %x' project

d = arrowy_new;
e = d .* (dot(a, d)/ (d(1)^2 + d(2)^2)); %y' project

hold on
n_xarrow = mArrow3([0 0 0],[arrowx_new(1) arrowx_new(2) 0], 'color','blue','stemWidth',0.05);
n_yarrow = mArrow3([0 0 0],[arrowy_new(1) arrowy_new(2) 0], 'color','blue','stemWidth',0.05);
xlim([arrowy_new(1) 5]);
ylim([-0.1 5]);


plot(c(1), c(2),'or')
plot(e(1), e(2),'or')

text(2.1, 1, 'x\prime','color','b')
text(-2.1, 2.1, 'y	\prime','color','b')

plot([c(1), 2], [c(2), 3], 'k:')  %x' vertical line
plot([e(1), 2], [e(2), 3], 'k:')  %y' horizontal line
hold off
axis off

