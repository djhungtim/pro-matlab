


clc
clear

load planets.mat;

x = load('planets.mat','escape');
y = load('planets.mat','mass');

x1 = cell2mat(struct2cell(x));
y1 = cell2mat(struct2cell(y));

a = load('planets.mat','diameter');
b = load('planets.mat','escape');

a1 = cell2mat(struct2cell(a));
b1 = cell2mat(struct2cell(b));

c = load('planets.mat','distance');
d = load('planets.mat','period');
g = load('planets.mat','velocity');
d1 = cell2mat(struct2cell(d));
c1 = cell2mat(struct2cell(c));

c2 = c1./d1;
g1 = cell2mat(struct2cell(g));

f = load('planets.mat','escape');

e1 = (y1.^(0.5))./(a1./2);
f1 = cell2mat(struct2cell(f));

subplot(2,2,1)
p = polyfit(x1,y1,2);
x2 = linspace(0,60);
y2 = polyval(p,x2);
plot(x1,y1,'or')
hold on
plot(x2,y2,'b')
hold off
xlabel('Escape Velocity(km/sec)')
ylabel('Mass (Earth = 1)')

subplot(2,2,2)
p1 = polyfit(a1,b1,3);
a2 = linspace(0,11.5);
b2 = polyval(p1,a2);
plot(a1,b1,'og')
hold on
plot(a2,b2,'b')
hold off
xlabel('Diameter (Earth = 1)')
ylabel('Escape Velocity(km/sec)')

subplot(2,2,3)
p2 = polyfit(c2,g1,1);
c3 = linspace(0,1.75);
g2 = polyval(p2,c3);
plot(c2,g1,'dc')
hold on
plot(c3,g2)
hold off
xlabel('Distance/Period')
ylabel('Orbital Velocity(km/sec)')

subplot(2,2,4)
p3 = polyfit(e1,f1,1);
e2 = linspace(0,6);
f2 = polyval(p2,e2);
plot(e1,f1,'ob')
hold on
plot(e2,f2)
hold off
xlabel('Square Root of Mass/Radius')
ylabel('Escape Velocity(km/sec)')





