function [wektor]=GenerujDaneWejsciowe(rozmiar)

wektor = rand(1, rozmiar);

for i = 1:rozmiar
    if wektor(1,i) > 0.5
        wektor(1,i) = 1;
    else
        wektor(1,i) = 0;
    end
end