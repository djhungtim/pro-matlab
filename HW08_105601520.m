



clc
clear 

x = 1:10000;

p_old = [2;3];
angle = pi/6;

sum_true = sum(x);
mean_true = mean(x);
std_true = std(x);

fh = localfunctions;

sum_new = fh{1}(x);
mean_new = fh{2}(x);
std_new = fh{3}(x);

trans = fh{4}(p_old,angle);

compare_std = std_true - std_new == 0;
compare_sum = sum_true - sum_new == 0;
compare_mean = mean_true - mean_new == 0;

function s = sum2(v)
n = length(v);
s = 0;
for i = 1:n
    s = s + v(i);
end
end

function m = mean2(v)
n = length(v);
m = sum2(v)/n;
end

function t = std2(v)

t = sqrt(sum2((v-mean2(v)).^2)/(length(v)-1));

end

function point = trans2(p,theta)
point(1) = cos(theta)*p(1) + sin(theta)*p(2);
point(2) = -sin(theta)*p(1) + cos(theta)*p(2);
end

