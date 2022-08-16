%% ECI to ECEF Transformation
function [Rf2i, Pecf] = ECI2ECF(jdut1, Peci)
Ri2f = R3(JD2GMST(jdut1));
Pecf = Ri2f*Peci; %in m
Rf2i = Ri2f';
end

function gsmt_deg = JD2GMST(jd)
Tut1 = JDCentury(jd);
ThetaGMST = 67310.54841 + (876600.0 * 3600.0 + 8640184.812866) * Tut1...
+ 0.093104 * Tut1^2 - 6.2e-6 * Tut1^3; % in sec
gsmt_deg = rem( ThetaGMST,86400 ) / 240.0; % deg
end