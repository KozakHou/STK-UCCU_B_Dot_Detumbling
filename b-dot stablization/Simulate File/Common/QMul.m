function output = QMul(Q1, Q2) 
s1 = Q1(1);
s2 = Q2(1);
q1 = [Q1(2); Q1(3);Q1(4)];
q2 = [Q2(2); Q2(3);Q2(4)];
output = [s1*s2-q1'*q2;
s1*q2 + s2*q1 + cross(q1, q2)];