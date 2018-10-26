function dy = CI_NleE(t,y,param)

% unwrap the parameters
a0E = param.a0E;
a0N = param.a0N;
aE = param.aE;
aN = param.aN;
aNleE = param.aNleE;
K0N = param.K0N;
K4E = param.K4E;
K4N = param.K4N;
KNleE = param.KNleE;
gamma = param.gamma;
% #####################

dy=zeros(3,1);
% #####################
% y(1): Erk
% y(2): NFkB
% y(3): NleE
% #####################

dy(1) = a0E + aE*K4E/(K4E+y(2)^2) - gamma*y(1);
dy(2) = a0N + aN*K4N/(K4N+y(3))*y(1)/(K0N+y(1)) - gamma*y(2);
dy(3) = aNleE*y(1)/(KNleE+y(1)) - gamma*y(3);

end