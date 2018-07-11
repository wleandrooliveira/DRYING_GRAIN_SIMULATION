% Coeficiente de convectivo volumetrico de transfer�ncia de calor
%%
function[ha]=HA(T,Ca,Ra,Va,visco,pa)
    
    % constantes
    as = 784;
    r0 = 0.008;
    alfa = 0.2755;
    beta = -0.34;
    
    Taux=T;   % passagem de parametro do valor da temperatura para calculo de viscosidade do ar
    Vaux = Va;
    Paux = pa;
    Raux = Ra;
    
    Gaux = GAP(Vaux,Paux);
    
    % chamada da funções de calculo de viscosidade do ar
    
    %viscoAux=VISCO(Taux);

    ha=alfa*Ca*Gaux*(((2*r0*Gaux)/visco).^beta)*as;
    
end