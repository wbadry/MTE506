%% laplace_example
% checking laplace transform solution
% Lab No. : 04
% Exercise No. : 03

%% Clean MATLAB
clc;
clear variables;
close all;

%% Laplace Transform
syms s t
Xs = 1/((s)*(s+2)*(s+5))

%% Find the inverse
xt = ilaplace(Xs)

%% Plot the response
h = matlabFunction(xt);

%% Create time stamp
t=0:0.01:5.0;
%% Plot the response
plot(t, h(t)),xlabel('Time (s)'),ylabel('Amplitude'),...
    title('Response of the system');

%% From manual solution
xt_hand = (1/10)-(1/6)*exp(-2*t)+(1/15)*exp(-5*t);
%% Plot the response
hold all;
plot(t, xt_hand,'r--'),xlabel('Time (s)'),ylabel('Amplitude'),...
    title('Response of the system');
