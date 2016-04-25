function [wektor]=DekodujPotrojone(DaneWejscioweZakodowane)


for i = 1:(length(DaneWejscioweZakodowane)/3)
    
    srednia = (DaneWejscioweZakodowane(1,i*3) + DaneWejscioweZakodowane(1,i*3-1) + DaneWejscioweZakodowane(1,i*3-2))./3;
    if srednia > 0.5
        wektor(1,i) = 1;
    else wektor(1,i) = 0;
    end
    
    
end