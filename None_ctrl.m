function dy = None_ctrl(t,y,param)

% unwrap the parameters
a0E = param.a0E;
a0N = param.a0N;
aE = param.aE;
aN = param.aN;
K0E = param.K0E;
K0N = param.K0N;
gamma = param.gamma;
% #####################

dy=zeros(2,1);
% #####################
% y(1): Erk
% y(2): NFkB
% #####################

dy(1) = a0E + aE*K0E/(K0E+y(2)^2) - gamma*y(1);
dy(2) = a0N + aN*y(1)/(K0N+y(1)) - gamma*y(2);

end