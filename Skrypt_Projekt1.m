
A = GenerujDaneWejsciowe(10000);

B = Potrajanie(A);

j=1;
for i=0:0.1:3
   Sigmy(j)=i;
C = DodajSzumZRozklademNormalnym(B, i, 0.5);
D = DekodujPotrojone(C);

BER(j)=obliczBER_Potrajanie(A,D); 
E(j)=obliczE_Potrajanie(A,D);

%hist(A==D); %sprawdzanie skutecznosci systemu
%disp('Press a key !') 
%pause;
j=j+1;
end

figure
subplot(3,2,1)       % add first plot in 2 x 1 grid
plot(BER, E, '*')
ylabel('E');
xlabel('BER');

subplot(3,2,2)       % add second plot in 2 x 1 grid
plot(BER, Sigmy, '*') 
ylabel('BER');
xlabel('Sigma');

subplot(3,2,3)       % add second plot in 2 x 1 grid
plot(E, Sigmy, '*') 
ylabel('E');
xlabel('Sigma');

% * * * * * * * * * * * * * * *
% Szum procentowy
clear C
clear D
clear BER
clear E
j=1;
for i=0:0.1:1
   Procenty(j)=i;
C = DodajSzumProcentowo(B, i);
D = DekodujPotrojone(C);

BER(j)=obliczBER_Potrajanie(A,D); 
E(j)=obliczE_Potrajanie(A,D);

%hist(A==D); %sprawdzanie skutecznosci systemu
%disp('Press a key !') 
%pause;
j=j+1;
end


subplot(3,2,4)       % add first plot in 2 x 1 grid
plot(BER, Procenty, '*')
ylabel('BER');
xlabel('Procenty');

subplot(3,2,5)       % add second plot in 2 x 1 grid
plot(E, Procenty, '*') 
ylabel('E');
xlabel('Procenty');




% stosunek 0 do 1 to ilosc bledow