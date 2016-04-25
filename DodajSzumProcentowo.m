function [wektor]=DodajSzumProcentowo(ZakodowanySygnal, ProcentowyPoziomSzumu)

wektorLosowy=rand(1,length(ZakodowanySygnal));
for i = 1:length(ZakodowanySygnal)
    if wektorLosowy(1,i) < ProcentowyPoziomSzumu
        if ZakodowanySygnal(1,i) == 1;
            wektor(1,i)=0;
        else wektor(1,i)=1;
        end
    else
        wektor(1,i)=ZakodowanySygnal(1,i);
    end
end