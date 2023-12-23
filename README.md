
The "B-Dot Stabilization" folder contains one subfolder and one PNG image.

The file "omega_stabilization.png" is a photo simulating the angular velocity stabilization of UCCU during B-dot detumbling starting at 09:00:00 on 2024/12/18 (top image), spanning 9600 seconds. It features blue line for Omega_X, yellow line for Omega_Y, and red line for Omega_Z. Initial disturbance is [10 5 0] deg/sec for [X, Y, Z], (referring to CubeADCS experiment).

The bottom image shows the magnetic field detected in the body coordinate system (in nT) with blue line for x, yellow line for y, and red line for z.

Simulate File:

Contains BDOT.slx which can launch Matlab-Simulink. After running the program, clicking on the oscilloscope icon in the bottom right corner allows observation of UCCU's angular velocity (top).

init_param.m is the .m file constructing UCCU's parameters, with the following content customizable:

$ duration % Desired simulation time length

$ dt % Numerical integration sampling length (recommended not to change)

$ Ib % This is the inertia tensor converted to a diagonal matrix (for other satellites, use I = eig([Original_Inertia tensor], 'matrix') to produce the satellite's diagonal inertia matrix)

$ w0 % This is the initial disturbance (a.k.a. Initial Condition)

^^@@[ This simulation uses the 2024 IGRF geomagnetic parameters (Magnetic Dipole Model) ]@@^^

AOCS Parameters: $ mtq_thd % Torque of the magnetic rods as used by CubeADCS $ bdot_cycle % Sampling time (1/Hz)

Simulating Outcomes

![alt text](https://github.com/KozakHou/STK-UCCU_B_Dot_Detumbling/blob/main/b-dot%20stablization/omega_stablization.png)


**Citation**
```
@KozakHou, email:kozak20010716@g.ncu.edu.tw
           Tel : +886-905804898
           Affiliation : Department of Space Science and Engineering, National Central University 
```
