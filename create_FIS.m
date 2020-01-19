function FIS = create_FIS (MF_I,MF_O,Rules)

%MFs = [MF(1) , MF(2) , ... , MF(N)]

for i = 1:numel(MF_I)
    FIS.Input(i).MF = MF_I(i);
end

for i = 1:numel(MF_O)
    FIS.output(i).MF = MF_O(i);
end

FIS.Rule = Rules;

FIS.parameters.number_of_inputs = numel(MF_I);
FIS.parameters.number_of_outputs = numel(MF_O);
FIS.parameters.number_of_rules = size(Rules,1);
