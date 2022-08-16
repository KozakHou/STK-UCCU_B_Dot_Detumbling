%% convert a vector in A frame to that in B frame by the quaternion operator
function Vb = EciToBody(Va,Qa2b)
Qb2a = QInv(Qa2b);
qout = QMul(QMul(Qb2a, [0;Va]), Qa2b);
Vb = [qout(2) qout(3) qout(4)]';