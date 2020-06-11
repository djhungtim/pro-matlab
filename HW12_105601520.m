
clc
clear
close

%x:people y:jellies
%7*x - 2 = y --> 7*x - y = 2
%8*x + 5 = y --> 8*x - y = 5

%left divide method
A = [7 -1;8 -1];
B = [2;5];
X = A\B; %inv(A)*B
check_ans = A*X;

%Cramer's rule
a = det([B, A(:,2)])/det(A);
b = det([B, A(:,1)])/det(A);

%Pseudo Inverse Matrix
X1 = pinv(A)*B;

%Eigenvalues Eigenvector
A = [1 2;3 2];
[V,D] = eig(A); %A*V = V*D.
check = A*V == V*D;

%%
% problem 3

subplot(2,2,1)
x=-4:0.1:4;
rng(2);
num=numel(x);
y=2*x+randn(1,num);
plot(x,y,'bo')

xlim([-8 8]);
ylim([-8 8]);
axis square
ax = gca;
xticks([-6 -4 -2 2 4 6])
xticklabels({'-6', '-4', '-2', '2', '4', '6'})
yticks([-6 -4 -2 2 4 6])
yticklabels({'-6', '-4', '-2', '2', '4', '6'})
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Original Coordinates')
text(1,7,'Y')
text(6,1,'X')
box off

%%
subplot(2,2,2)

A = [x;y]';
[U,S,V] = svd(A);

asin(V(1,1))
acos(V(2,1))
theta = asin(V(1,1));
rotarr = []

x=-4:0.1:4;
rng(2);
num=numel(x);
y=2*x+randn(1,num);
plot(x,y,'bo')

xlim([-10 10]); 
ylim([-8 8]);
axis equal
ax = gca;
xticks([-8 -6 -4 -2 2 4 6 8])
xticklabels({'-8', '-6', '-4', '-2', '2', '4', '6', '8'})
yticks([-6 -4 -2 2 4 6])
yticklabels({'-6', '-4', '-2', '2', '4', '6'})
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Findinf New Coordinates By Singular Value Decomposition')
text(1,7,'Y')
text(8,1,'X')

hold on



box off

%%

subplot(2,2,3)



A = [x;y]';
[U,S,V] = svd(A);

x=-4:0.1:4;
rng(2);
num=numel(x);
y=2*x+randn(1,num);
% plot(x,y,'bo')

xlim([-8 8]);
ylim([-8 8]);
axis square
ax = gca;
xticks([-6 -4 -2 2 4 6])
xticklabels({'-6', '-4', '-2', '2', '4', '6'})
yticks([-6 -4 -2 2 4 6])
yticklabels({'-6', '-4', '-2', '2', '4', '6'})
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('New Coordinates')
text(1,7,'Y\prime')
text(6,2,'X\prime')


new_y = A*V(:,2);
new_x = A*V(:,1);
hold on
plot(new_x,new_y,'bo')

box off









