function value = fuzzy_engine (input,FIS)

for i = 1:FIS.parameters.number_of_inputs
    MV.Input(i).MF=eval_MF(input(i),FIS.Input(i).MF);
end

%% Denominator

Phi_den = 0;

for i = 1:FIS.parameters.number_of_rules
    
    MU = 1;
    
    for j = 1:FIS.parameters.number_of_inputs
        MU = MU * MV.Input(j).MF(FIS.Rule(i,j));
    end
    
    Phi_den = Phi_den + MU;
end

%% Numinator

Phi_num = 0;

for i = 1:FIS.parameters.number_of_rules
    
    MU = 1;
    
    for j = 1:FIS.parameters.number_of_inputs
        MU = MU * MV.Input(j).MF(FIS.Rule(i,j));
    end
    
    Phi_num = Phi_num + MU*FIS.Rule(i,end);
end
value = Phi_num/Phi_den;