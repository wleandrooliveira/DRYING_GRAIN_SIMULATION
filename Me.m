%Umidade de equilibrio Me

function[me] = Me(rh,T)
    
    % constantes
    c1 = 8.654*10^-5;
    c2 = 1.8634;
    c3 = 49.81;
    
    % variaveis auxiliares
    rhaux = rh;
    Taux = T;
    me = 0.01*((log(1-rhaux)/(-c1*(Taux+c3))))^(1/c2);
    
endgit 