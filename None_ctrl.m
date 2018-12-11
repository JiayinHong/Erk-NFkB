function dy = None_ctrl(t,y,param)

% unwrap the parameters
a0E = param.a0E;
a0N = param.a0N;
aE = param.aE;
aN = param.aN;
K0E = param.K0E;
K0N = param.K0N;
% Kauto = param.Kauto;
gamma = param.gamma;

% kact = param.kact;
% Etot = param.Etot;
% kde = param.kde;
% #####################

dy=zeros(2,1);
% #####################
% y(1): Erk
% y(2): NFkB
% #####################
% dy(1) = a0E + aE*K0E/(K0E+y(2)^3) *Kauto/(Kauto+y(1)) - gamma1*y(1);
dy(1) = a0E + aE*K0E/(K0E+y(2)^3+y(1)) - gamma*y(1);
% dy(1) = kact*(Etot-y(1))*K0E/(K0E+y(2)^2) - kde*y(1)/(Kauto+y(1));
dy(2) = a0N + aN*y(1)/(K0N+y(1)) - gamma*y(2);

end