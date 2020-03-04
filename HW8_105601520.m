



clc
clear 

x = 1:1:100;

sum_true = sum(x);
mean_true = mean(x);
std_true = std(x);

fh = localfunctions;

sum_new = fh{1}(x);
mean_new = fh{2}(x);
std_new = fh{3}(x);

compare_std = std(x) - std3(x);
compare_wum = sum(x) - sum3(x);
compare_mean = mean(x) - mean3(x);

function s = sum3(v)
n = length(v);
s = 0;
for i = 1:n
    s = s + i;
end
end

function m = mean3(v)
n = length(v);
m = sum3(v)/n;
end

function t = std3(v)

t = sqrt(sum((v-mean3(v)).^2)/(length(v)-1));

end

