%{
Heat Transfer Through Caps Function
Determines the conduction heat transfer through the circular ends of a cylindrical body.

Params: radius, thickness of insulation, thickness of structure, external
air velocity, conduction coeff of insulation, conduction coeff of
structure, external temperature, internal temperature.

Returns: Heat transfer into the system (watts)

Evan Bosia
%}

function Qc = heat_caps(rs, ti, ts, v_air, ki, ks, To, Ti)
%Inner edge
h1 = 10.5;

%Outer edge
h2 = 10.5 - v_air + 10 *sqrt(v_air);

%Cap heat resistance insulation
Rcdi = ti/(pi*(rs-ti)^2*ki);

%Cap heat resistance tube structure
Rcds = ts/(pi*(rs)^2*ks);

%Convection heat resistance internal
Rcv1 = 1/(pi*(rs-ti)^2*h1);

%Convection heat resistance external
Rcv2 = 1/(pi*rs^2*h2);

%Total thermal resistance
Rt = Rcv1 + Rcdi + Rcds + Rcv2;

%Heat transfer through 2 caps
Qc = 2*(To-Ti)/Rt;
end