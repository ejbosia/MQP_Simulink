%{
CONSTANTS
This file contains the constants used for Simulink modeling. It is
automatically loaded prior to running the Simulink model.

Evan Bosia
%}

clear all;

%PID constants
kp = 5;
ki = 0.01;
kd = 0;

%PID target
Target = 280;

%Relay target bounds
Up_Target = 276;
Low_Target = 274;

%Ambient Temperature
T = 294;

%Mass of heatsink and coolsink adjusted for uneven heating
mh = 0.293/2; %0.293 BALTO 2.0 HEATSINK
mc = 0.113/2.45; %0.113 BALTO 2.0 COOLSINK

%Conduction coefficient for heatsink and coolsink
Ch = 9100;
Cc = 9100; % AL 9100, CU 3900

%Initial energy of heatsink and coolsink
Qh = Ch * mh * T;
Qc = Cc * mc * T;

%Thermal resistance of heatsink and coolsink
Rth = 0.152;
Rtc = 0.7;

%Internal conduction of heatsink and coolsink
HK = 5;
CK = 2;

%Size of TEC area adjacent to heatsink and coolsink
%Used to get TEC temperature difference ~ the smaller the more accurate
H = 1000;
C = 1000; 

%Package RT ~ heat loss included due to imperfections included
Rtp = 6.25*0.8;

%Package volume
V = .0015;

%Package air initial energy
Cp = 718;
Qp = Cp*V*1.2754*T;

%Coverage of heatsink and coolsink on TEC (not 100%)
Hcov = 0.7;
Ccov = 0.6;

%Voltage input for relay
Voltage = 11.1/11.1*5;

%Heat back into package when on
H_const = 0.0;

%Conduction through TEC
HTC = 0.5;

%Simulation step size (always 1
step = 1;


