%% JulianDay
function jd = DateTime2JD(date_time)
year = date_time(1);
month = date_time(2);
day = date_time(3);
hour = date_time(4);
min = date_time(5);
sec = date_time(6);
jd = 367*year - fix(7*(year + fix((month + 9)/12))/4) ...
    + fix(275*month/9) + day + 1721013.5 + (sec/3600+min/60+hour)/24 ;
if nargout ==0
    dtstr = datestr(date_time,'mmmm dd, yyyy HH:MM:SS');
    jdstr = sprintf('JD = %.8f\n',jd);
    fprintf(strcat('\n',dtstr,',',jdstr,'\n\n'));
end