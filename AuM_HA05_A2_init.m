clear all
%Allgemeine Parameter
%Wicklungswiderstand
 R_S=0.58;
% Induktivität
 L_S = 4e-3;
%Zeitkonstante Wicklung
   T_S = L_S/R_S;
%Zeitkonstante Stromrichter
    T_SR=50e-6;
%Zeitkonstante Strommessung
    T_mi = 50e-6;
%Zeitkonstante Strommessung und Stromrichter
    T_oi=T_SR+T_mi;
%Elektromechanische Zeitkonstante aus Stromregler resultierend
    T_EM=4*T_oi;
%zeitkonstante Drehzahlmessung
    T_mw=908e-6;
%Polradfluss
    Psi_P=4.5e-3;
%Polpaarzahl
    p=5;
%Massenträgheit
    J=450e-6;
%Maximale Wicklungsspannung
U_d=24;
u_max=U_d;
%Maximale Strom
    i_max=4;
%Reibmoment
    M_RC = 0.05;

%PWM-Frequenz
f_PWM=16000;
T_PWM = 1;%/f_PWM;
    
    
%Stromregler
    K_pi=(T_oi.^2+T_S.^2)/(2/R_S*T_oi*T_S);
    T_ni=4*T_oi*T_S*(T_oi.^2+T_S.^2)/(T_oi+T_S).^3;
    
%Drehzahlregler
    T_ow=T_mw+T_EM;
    K_pw=(J/p)/2/T_ow;
    T_nw=4*T_ow;

    