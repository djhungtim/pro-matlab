clc
clear
t = 0:0.01:2*pi;
r = 5;
x = r*cos(t);
y = r*sin(t);
plot(x,y)
axis square
figure(3)
t = 0:0.01:2*pi;
r = 5;
x = r*cos(t);
y = r*sin(t);
plot(x,y)
axis equal

who
whos

% num = numel(x);
% 
% 
% [xx,yy,zz] = peaks(50);
% figure(2)
% contour(xx,yy,zz)
% 
% x = 1:5;
% y = prod(x)
% 
% fprintf('y = %3.2f',y)

x = 1:2:99
y = rand([1 50])
plot(x,y)

a = [1 2;3 4]
b = [1 2;3 4]
cat(1,a,b)


