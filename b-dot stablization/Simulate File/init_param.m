clear;
clc;
%% magnetic control init_param 2022/4/26
addpath('./Common'); 
deg2rad = pi/180;
r2d = 1/deg2rad;
duration = 9600;
dt = 1/4; % sampling time 0.25 sec
dut1 = -204.8704e-3; %sec
epoch = [2024 12 18 8 50 0+dut1];
jd0 = DateTime2JD(epoch); 
%% Spacecraft Dynamics
h0 = zeros(3,1); % wheel angular momentum in Nms
Nb0 = zeros(3,1); % external torque in Nm
Ib = diag([0.0121, 0.0379, 0.0380]); % moment of inertia in kg.m^2
w0 = [5 10 10]'*deg2rad; % initial body rates in rad/sec
Qi2b0 = [1 0 0 0]'; % initial attitude ECI to Body
L0 = Ib*w0; % initial 
%% Orbit Prop
mu_e = 3.986004418e14; % m^3/s^2
init_pv_eci = [-5877328.551 3688970.336 11369.332 ...
550.193937 853.430111 7510.746227];% m, m/s
%% Magnetic Dipole Model (mpm)
% IGRF_2024
mpm.g10 = 29731.2e-9; %T
mpm.g11 = -1745.9e-9; %T
mpm.h11 = 4652.5e-9; %T
%% AOCS Parameters
mtq_thd = 0.48; % Am^2
k = 2; % bdot gain for initial tunning
bdot_cycle = 1; % sec
