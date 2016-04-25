function [wektorPotrojony]=Potrajanie(wektorDoPotrojenia)


for i = 1:length(wektorDoPotrojenia)
    
    wektorPotrojony(1, i*3) = wektorDoPotrojenia(1, i);
    wektorPotrojony(1, i*3-1) = wektorDoPotrojenia(1, i);
    wektorPotrojony(1, i*3-2) = wektorDoPotrojenia(1, i);

end



end