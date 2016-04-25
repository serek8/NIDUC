function [E]=obliczE_Potrajanie(daneWejsciowe, zdekodowanySygnal)

iloscPoprawnieOdebranychBitow=0;
iloscOdebranychBitow=length(zdekodowanySygnal);

for i=1:length(zdekodowanySygnal)

    if(daneWejsciowe(i)==zdekodowanySygnal(i))
       iloscPoprawnieOdebranychBitow=iloscPoprawnieOdebranychBitow+1;
       
    end
end
E=iloscPoprawnieOdebranychBitow/(iloscOdebranychBitow*3); % dzielnik = 
% ilosc odebranych nie zdekodowanych bitow
end