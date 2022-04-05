% 201911117 이나영 - 디지털신호처리 Homework1
%% 3-b spectrum calculation
for n=1:12
    an = (4/(n*pi)*(-1+cos(n*pi)))^2;
    n
    an
end

%% 3-c plot
t = -10:0.001:10;
g1 = 0;
g2 = 0;
N = 100;  % change the value of the N

for n = -N:N  % calculate g(t) for complex form
    if n == 0
        continue
    end
    g1 = g1 + (2j)*(1-cos(n*pi))*exp(1j*n*pi*t)/(n*pi);
end

for n = 1:N  % (just for test) calculate g(t) for tri form
    g2 = g2 + 4/(n*pi)*(-1+cos(n*pi))*sin(n*pi*t);
end

plot(t,g1)
hold on
%plot(t,g2)
%hold off

%% 3-d calculate, plot
t = 0:0.001:1;
g1 = 0;
N = 1000;  % change the value of the N

for n = -N:N  % calculate gf(t) for complex form
    if n == 0
        continue
    end
    g1 = g1 + (2j)*(1-cos(n*pi))*exp(1j*n*pi*t)/(n*pi);
end

m = real(mean(g1,'all'));   % mean value of gf(t) (0<t<1) 
err_per = (-2-m)/(-2)*100;  % error percentage

N
m
err_per

t2 = -10:0.001:10;  %change the range of t (for plotting)
g2 = 0;
for n = -N:N  % calculate g(t) for complex form with changed range
    if n == 0
        continue
    end
    g2 = g2 + (2j)*(1-cos(n*pi))*exp(1j*n*pi*t2)/(n*pi);
end

plot(t2,g2);
hold off;


