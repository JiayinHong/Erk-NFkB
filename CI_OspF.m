function dy = CI_OspF(t,y,param)

% unwrap the parameters
a0E = param.a0E;
a0N = param.a0N;
aE = param.aE;
aN = param.aN;
aOspF = param.aOspF;
K0E = param.K0E;
K3E = param.K3E;
K3N = param.K3N;
KOspF = param.KOspF;
gamma = param.gamma;
% #####################

dy=zeros(3,1);
% #####################
% y(1): Erk
% y(2): NFkB
% y(3): OspF
% #####################

dy(1) = a0E + aE*K3E/(K3E+y(3))*K0E/(K0E+y(2)^2) - gamma*y(1);
dy(2) = a0N + aN*y(1)/(K3N+y(1)) - gamma*y(2);
dy(3) = aOspF*y(2)/(KOspF+y(2)) - gamma*y(3);

end