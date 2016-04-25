function [BER]=obliczBER_Potrajanie(daneWejsciowe, zdekodowanySygnal)

iloscBlednieOdebranychBitow=0;
iloscOdebranychBitow=length(zdekodowanySygnal);

for i=1:length(zdekodowanySygnal)

    if(daneWejsciowe(i)~=zdekodowanySygnal(i))
       iloscBlednieOdebranychBitow=iloscBlednieOdebranychBitow+1;
       
    end
end
BER=iloscBlednieOdebranychBitow/iloscOdebranychBitow;
end


   
    
