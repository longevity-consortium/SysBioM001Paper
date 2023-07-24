model = readCbModel('iMM1865.mat');
load('expressionData.mat');
changeCobraSolver('gurobi', 'LP');
changeCobraSolver('gurobi', 'MILP');


objective = {'BIOMASS_reaction'}'
model = changeObjective(model, objective)

tol = 1e-6;
core = {'BIOMASS_reaction'}';

exRxns = strmatch('EX_', model.rxns);
exRxns_names = model.rxns(exRxns);
model = changeRxnBounds(model,exRxns_names,0,'l');

%for loop to read each column and construct tissue models
    for i = 1:78
        expressionData.value = expressionData.rawValue(:,i);
        [expressionRxns parsedGPR] = mapExpressionToReactions(model, expressionData);
        median(prctile(expressionData.rawValue, 25))
        tissueModel = iMAT(model, expressionRxns, 0, 1, tol, core);
        tissueModel = removeUnusedGenes(tissueModel);
        save(['Model_' num2str(i) '.mat'],'tissueModel');
    end
    
