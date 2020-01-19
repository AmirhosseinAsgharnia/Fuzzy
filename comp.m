clear; clc

a=readfis('a');

t=0:0.01:1;
y_1 = zeros(size(t));
y_2 = zeros(size(t));
figure('rend','painters')
tic
for i=1:numel(t)
    y_1(i)=evalfis([t(i) t(i)],a);
end
plot(t,y_1,'or')
hold on
toc
load('matlab.mat');
tic
for i=1:numel(t)
    y_2(i)=fuzzy_engine([t(i) t(i)],FIS);
end
plot(t,y_2,'*b')

figure('rend','painters')
plot(t,(y_2-y_1)*100./y_1)

toc