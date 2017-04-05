%{
Heat Transfer Through Cylinder Function
Determines the conduction heat transfer through a cylindrical body.

Params: radius, thickness of insulation, thickness of structure, external
air velocity, conduction coeff of insulation, conduction coeff of
structure, external temperature, internal temperature, height.

Returns: Heat transfer into the system (watts)

Evan Bosia
%}

function Qw = heat_cylinder(rs, ti, ts, v_air, ki, ks, To, Ti, L)
%Inner Edge
r1 = (rs-ti);
h1 = 10.5;

%Radius to insulation-structure boundary
rm = rs;

%Outer edge
r2 = (ts+rs);
h2 = 10.5 - v_air + 10 *sqrt(v_air);

%Cylinder heat resistance insulation
Rcdi = log(rm/r1)/(2*pi*L*ki);

%Cylinder heat resistance tube structure
Rcds = log(r2/rm)/(2*pi*L*ks);

%Convection heat resistance internal
Rcv1 = 1/(2*pi*r1*L*h1);

%Convection heat resistance external
Rcv2 = 1/(2*pi*r2*L*h2);

%Total thermal resistance
Rt = Rcv1 + Rcdi + Rcds + Rcv2;

%Heat transfer
Qw = (To-Ti)/Rt;
end