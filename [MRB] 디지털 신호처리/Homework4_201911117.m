% 디지털 신호처리 Homework 4
% 201911117 이나영
%% 1-(a) plot ECG signal
Ts = 8*10^(-3);     %sampling interval
n = length(ECG1); %# of sample
t = 0:Ts:Ts*(n-1);      %time
t = t.';
plot(t,ECG1);
xlim([0 Ts*n])
hold off

%t = 0:Ts:5;        % time
%t = t.';
%n = length(t);      % # of sample data
%y = ECG1(1 : n);
%plot(t, y);
%% 1-(a) plot magnitude spectrum
ft_ECG = fft(ECG1);
mag = abs(ft_ECG);
plot(mag);
hold off