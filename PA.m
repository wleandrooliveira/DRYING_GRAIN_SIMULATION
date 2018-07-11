% pressão exercida pelo ar seco

function[pa]=PA(T,Ra,P)
    Taux = T;
    Paux = P;
    Raux = Ra;
    pa=Paux/(Raux*(Taux+273.15));
end