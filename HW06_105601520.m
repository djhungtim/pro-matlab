


clc
clear
close all

mesh_x = -1.5:0.5:1.5;
mesh_y = -1.5:0.5:1.5;

[meshX, meshY] = meshgrid(mesh_x, mesh_y);

meshZ = zeros(7, 7);
figure('Renderer', 'painters', 'Position', [10 10 800 400]) % Set figure pixel size to 800x400

subplot(1,2,1)
plot3(meshX, meshY, meshZ,'kx', 'MarkerSize', 15, 'LineWidth', 1)
xlim([-2 2])
ylim([-2 2])
view(0, 90)
axis square
xlabel('x')
ylabel('y')
text(-1.25, 1.25, 'B','FontSize', 10)

v = [1 0 0];     %initial velocity
B = [0 0 -1];    %magnitude of B
m = 1;           % mass
q = 1;           % charge on particle
r0 = [0 -1 0];   % initial position of particle

%find velocity parallel to B and perpendicular to B
v_para = (dot(v,B)/norm(B))*(B/norm(B));
v_per = v - v_para;

% find the circles centre
r = m*(norm(v_per))/(q*norm(B));

theta = atan(v_per(2)/v_per(1))+pi/2;

xc=r0(1) + r*cos(theta);
yc=r0(2) + r*sin(theta);

w = norm(v_per)/r;

hold on
subplot(1, 2, 1)

t = 0;
for i = 1:1000

    x=xc+r*cos(w.*t + pi + theta);
    y=yc+r*sin(w.*t + pi + theta);

    plot(x,y,'r.');
    hold on
    t = t + 0.1;
    
end

hold on
plot(0.2047, 0.9788, 'r>','MarkerFaceColor', 'red' ,'MarkerSize', 10)


text(0.1,1.25,'e^{-}','FontSize', 10,'Color', 'red')
title('Eletron Trajectory in a B Uniform Field')

subplot(1,2,2)

arrow = mArrow3([0 0 0],[4 4 4], 'color','red','stemWidth',0.05);
xarrow = mArrow3([0 0 0],[5 0 0], 'color','black','stemWidth',0.05);
yarrow = mArrow3([0 0 0],[0 5 0], 'color','black','stemWidth',0.05);
zarrow = mArrow3([0 0 0],[0 0 5], 'color','black','stemWidth',0.05);
view(120, 10)
xlim([0 6])
ylim([0 6])
zlim([-0.1 6])

text(4,4,4 ,'(4,4,4)','FontSize', 15,'Color', 'blue')
text(6,0,0 ,'X','FontSize', 15,'Color', 'black')
text(0,5.1,0 ,'Y','FontSize', 15,'Color', 'black')
text(0,0,5.5 ,'Z','FontSize', 15,'Color', 'black')

hold on 

plot3([4,0],[4,0],[0,0], 'r')
plot3([4,4],[4,4],[0,4], 'r')
plot3([4,4],[0,4],[0,0], 'r')
plot3([0,4],[0,4],[4,4], 'r')
plot3([0,4],[4,4],[0,0], 'r')

fill3([0,4,4,0],[0,4,4,0],[0,0,4,4],'yellow')

axis equal
axis off






