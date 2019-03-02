%% tank_simulation
% simulating water tank
% Lab No. : 01
% Exercise No. : 01

%% Clean MATLAB
clear variables;
close all;

%% Declare variables for water tank simulation
h0 = 0;                 % level initial condition
a = 10;                  % Cross sectional area is 1 m^2
k = 1;                  % Friction of valve is 1
qin =0.4;              % input pump of 0.4 m^3/s
qout = k * h0;    % inital output valve flowrate m^3/s

%% Create time steps
dt = 1; % Simulation stepping time is 100 ms
tf = 30; % simulation time for 30 seconds
t = 0 : dt : tf; % time is from 0 to 30 with step of 1 ms

%% Simulate the tank model
qin =qin * ones([1 length(t)]); % convert qin single value to array
h = zeros([1 length(t)]); %allocate h values with zeros
for i = 1 : length(t)
    if (i == 1)
        h(i) = h0;
    else
        hprev = h(i-1); %h(t - dt)
        qout = k * hprev; % qout = k * sqrt(h(t-dt))
        % h(t) = [(qout - qin(t))/area] + h(t-dt)
        dh = (dt *(qin(i) - qout))/a;
        h(i) = dh + hprev;
    end
     
end

figure('name','Step Response')

plot(t,qin,t,h),xlabel('time (s)'),ylabel('Step Response'),...
    title('Plotting step response'),legend('Input Discarge','Tank Level');