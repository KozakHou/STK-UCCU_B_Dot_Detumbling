function gsmt_deg = DateTime2GMST(DateTimeUT1)
Tut1 = JDCentury(DateTime2JD(DateTimeUT1));
ThetaGMST = 67310.54841 + (876600.0 * 3600.0 + 8640184.812866) * Tut1...
+ 0.093104 * Tut1^2 - 6.2e-6 * Tut1^3; % in sec
gsmt_deg = rem( ThetaGMST,86400 ) / 240.0; % deg
if gsmt_deg < 0
    gsmt_deg = gsmt_deg + 360;
end
if nargout ==0
    fprintf('\nGMST = %13.10f deg\n\n',gsmt_deg);
end