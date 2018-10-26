function param=setParameter(model_name)

param = struct();

switch model_name
    case 'None_ctrl'
        param.a0E = 0.0075;
        param.a0N = 0.005;
        param.aE = 0.095;
        param.aN = 0.07;
        param.K0E = 9;
        param.K0N = 16;
        param.gamma = 0.002;
        
    case 'NFB_OspF'
        param.a0E = 0.0075;
        param.a0N = 0.005;
        param.aE = 0.095;
        param.aN = 0.07;
        param.K0E = 9;
        param.K1E = 26;
        param.K1N = 16;
        param.gamma = 0.002;
        
    case 'NFB_NleE'
        param.a0E = 0.0075;
        param.a0N = 0.005;
        param.aE = 0.095;
        param.aN = 0.07;
        param.K0N = 16;
        param.K2E = 9;
        param.K2N = 26;
        param.gamma = 0.002;
        
    case 'CI_OspF'
        param.a0E = 0.0075;
        param.a0N = 0.005;
        param.aE = 0.095;
        param.aN = 0.07;
        param.aOspF = 0.56;     % up tunable
        param.K0E = 9;
        param.K3E = 16;       % down tunable
        param.K3N = 20;
        param.KOspF = 3;     % down tunable
        param.gamma = 0.002;
        
    case 'CI_NleE'
        param.a0E = 0.0075;
        param.a0N = 0.005;
        param.aE = 0.095;
        param.aN = 0.07;
        param.aNleE = 0.07;     % tunable
        param.K0N = 16;
        param.K4E = 17;     % tunable
        param.K4N = 20;       % tunable
        param.KNleE = 16;     % tunable
        param.gamma = 0.002;
        
end

end