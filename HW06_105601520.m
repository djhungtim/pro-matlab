


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
text(-1.25, 1.25, 'B')

hold on

gyro_x = 


subplot(1,2,1)




%%
% v = [1 0 10];   %initial velocity
% B = [0 0 -1];    %magnitude of B
% m = 1;          % mass
% q = 1;          % charge on particle
% r0 = [1 0 0];    % initial position of particle
% 
% %find velocity parallel to B and perpendicular to B
% v_para = (dot(v,B)/norm(B))*(B/norm(B));
% v_per = v-v_para;
% 
% % find the circles centre
% r = m*(norm(v_per))/(q*norm(B));
% 
% theta = atan(v_per(2)/v_per(1))+pi/2;
% 
% xc=r0(1)+r*cos(theta);
% yc=r0(2)+r*sin(theta);
% 
% w= norm(v_per)/r;
% 
% ax1 = subplot(1,2,1)
% 
% for t = 1:1000
% 
%     x=xc+r*cos(w.*t + pi+theta);
%     y=yc+r*sin(w.*t + pi+theta);
% 
%     plot(x,y,'.');
%     hold on
%     t=t+0.0001;
%     
% end
% 
% title('eletron trajectory in b field')
% xlabel('x')
% ylabel('y')
% 
% xlim([0 2])
% ylim([0 2])
% grid(ax1,'on')
% 
% ax2 = subplot(1,2,2)
% 
% for t = 1:1000
% 
%     x=xc+r*cos(w.*t + pi+theta);
%     y=yc+r*sin(w.*t + pi+theta);
%     z=v_para*t;
%     plot3(x,y,z,'.');
%     hold on
%     t=t+0.01;
% 
%     
% end
% 
% 
% title('eletron trajectory in 3D')
% xlabel('x')
% ylabel('y')
% zlabel('z')
% 
% xlim([0 2])
% ylim([0 2])
% zlim([-500 3500])
% 
% 
% 






