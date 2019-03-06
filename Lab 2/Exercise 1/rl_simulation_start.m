%% rl_simulation
% simulating RL circuit
% Lab No. : 02
% Exercise No. : 01

%% Clean MATLAB
clear variables;
close all;

%% Declare variables for water tank simulation
i0 = [];         % current initial condition (A)
v  = [];         % voltage source (V)
r  = [];         % Resistance in ohms
l  = [];         % Inductance in henry

%% Create time steps
dt = 0.01;              % Simulation stepping time is 10 ms
tf = 1;                 % simulation time for 1 second
t  = 0 : dt : tf;       % time is from 0 to 1 with step of 10 ms

%% Simulate the rc circuit model
vin = v * ones([1 length(t)]);      % convert vin single value to array
i   = zeros([1 length(t)]);         % allocate i values with zeros
for m = 1 : length(t)
    if (m == 1)
       i(m) = [];                   % i= initial condition
    else
       i(m) = [];                   % deduced dynamics
    end
     
end

%% Plot step input voltage and output current
figure('name','Step Response')
subplot(2,1,1)
plot(t,vin),xlabel('time (s)'),ylabel('Step Response'),...
    title('Plotting Input Voltage');
subplot(2,1,2)
plot(t,i),xlabel('time (s)'),ylabel('Input Voltage'),...
    title('Plotting Current');
