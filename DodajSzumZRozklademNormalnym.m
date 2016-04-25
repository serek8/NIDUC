function [wektor]=DodajSzumZRozklademNormalnym(ZakodowanySygnal, sigma, PoziomSzumu)

wektorRozkladu = normrnd(0,sigma,1, length(ZakodowanySygnal)); % 1 arg - srednia, 2 arg sigma, 3 i 4 wymiary macierzy
wektor = ZakodowanySygnal;
for i = 1:length(ZakodowanySygnal)
    if abs(wektorRozkladu(1,i)) > PoziomSzumu
       if ZakodowanySygnal(1,i) == 1;
           wektor(1,i)=0;
       else wektor(1,i)=1;
       end
    end
end