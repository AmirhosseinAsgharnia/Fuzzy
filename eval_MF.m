function mu = eval_MF (sys_input,data)

ind = find(sys_input>=data.x,1,'last');

mu=data.y(:,ind); 