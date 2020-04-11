

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

subplot(2,2,2)
x2 = escape;
y2 = mass;
plot(x2,y2,'or')
ylim([0 400]);
xlabel('Escape velocity(km/sec)')
ylabel('Mass (Earth = 1)')

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

xlabel('x','color','r')
ylabel('y','color','r')

hold on 
plot(2, 3, 'ok')
text(2, 3, '  (2,3)') %point
plot([2, 2], [0, 3], 'k:')  %vertical line
plot([0, 2], [3, 3], 'k:')  %horizontal line

arrowx = [5;0];
arrowy = [0;5];
theta = pi/6;
rot_matrix = [cos(theta) -sin(theta); sin(theta) cos(theta)];
arrowx_new = rot_matrix*arrowx;
arrowy_new = rot_matrix*arrowy;

length_point = sqrt((13));

phix = asin(3/length_point) - theta;

ehead = [1,1];
v_xproject = ehead.*length_point*cos(phix);
v_yproject = ehead.*length_point*sin(phix);

phiy = pi/2 - phix;
u_xproject = ehead.*length_point*cos(phiy);
u_yproject = ehead.*length_point*sin(phiy);


hold on
n_xarrow = mArrow3([0 0 0],[arrowx_new(1) arrowx_new(2) 0], 'color','blue','stemWidth',0.05);
n_yarrow = mArrow3([0 0 0],[arrowy_new(1) arrowy_new(2) 0], 'color','blue','stemWidth',0.05);
xlim([arrowy_new(1) 5]);
ylim([-0.1 5]);
plot(v_xproject(1), v_yproject(1),'or')
plot(u_xproject(1), u_yproject(1),'og')
%plot([2, 2], [pointy_new(1), pointy_new(2)], 'k:')  %vertical line
%plot([0, 2], [3, 3], 'k:')  %horizontal line


