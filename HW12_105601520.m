
clc;
clear;

A = [1 2;3 2];

e = eig(A); %eigenvalues of matrix A £f

[V,D] = eig(A); % Av = £fv  V = eigenvectors

%%
E = [-4 -2];
F = [8 9;-1 -1];
f = inv(F);
%x:people y:jellies
g = E*f;%[x y] = [2 20]



