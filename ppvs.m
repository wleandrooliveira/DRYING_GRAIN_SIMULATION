function [PPvs] = ppvs(T)

    RRa = 22105649.25;
    AA = -27405.526;
    BB = 97.54;
    CC = -0.146244;
    DD = 0.122556*10^-3;
    EE = -0.48502*10^-7;
    FF = 4.34903;
    GG = 0.39381*10^-2;


    AB = BB*(T+273.15);
    AC = (CC*(T+273.15)^2);
    AD = (DD*(T+273.15)^3);
    AE = (EE*(T+273.15)^4);
    AF =  FF*(T+273.15);
    AG =  GG*(T+273.15)^2;
    AAaux = (AA + AB + AC + AD + AE);
    BBaux = AF - AG ;
    CCaux =AAaux/BBaux;
    DDaux = exp(CCaux);
    PPvs = RRa*DDaux;

end