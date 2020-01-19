clear
clc

MF_I_1 = create_MF ([0 1],3,'tri');
MF_I_2 = create_MF ([0 1],3,'gauss');

MF_O = [1 2 3];

Rule = [ 1 , 1 , 1
    1 , 2 , 2
    1 , 3 , 3
    2 , 1 , 3
    2 , 2 , 1
    2 , 3 , 2
    3 , 1 , 3
    3 , 2 , 2
    3 , 3 , 1 ];

FIS = create_FIS ([MF_I_1 MF_I_2],MF_O,Rule);

%value = fuzzy_engine ([0.25 0.25],FIS);
