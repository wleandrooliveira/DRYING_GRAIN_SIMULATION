% Calor latente de vaporização

function[hfg]=HFG(TG,M)

    hfg = (1094 - 0.57*TG)*(1+(4.35*exp(-28.25*M)));
    
end