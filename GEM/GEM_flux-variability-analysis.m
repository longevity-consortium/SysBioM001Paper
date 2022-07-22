% Code for analyzing tissue specific models
changeCobraSolver('gurobi','all');


objective = {'BIOMASS_reaction'}

filenumber = 67:78
for i = filenumber
    tissueModel = readCbModel(['Model_' num2str(i) '.mat'])
    tissueModel = changeObjective(tissueModel, objective);
    opt_tissue = optimizeCbModel(tissueModel);
    reactions = tissueModel.rxns;
    genes = tissueModel.genes;
    flux = opt_tissue.x;
    [minFlux,maxFlux] = fastFVA(tissueModel,90);
    [grRatio, grRateKO, grRateWT, hasEffect, delRxns, fluxSolution] = singleGeneDeletion(tissueModel, 'FBA');
    [grRatio_rxn, grRateKO_rxn, grRateWT_rxn, hasEffect_rxn, delRxn_rxn, fluxSolution_rxn] = singleRxnDeletion(tissueModel, 'FBA');
    my_file = sprintf('tissuemodel_%d.csv', i);
        fid = fopen(my_file, 'w');
        for j = 1:size(reactions)
            fprintf(fid, '%s\t%f\t%f\t%f\t%f\t%f\n', reactions{j}, flux(j), minFlux(j), maxFlux(j), grRatio_rxn(j), grRateKO_rxn(j));
        end
        fclose(fid);
    my_gene = sprintf('geneKO_normalized_%d.csv', i);
        fid = fopen(my_gene, 'w');
        for k = 1:size(genes)
            fprintf(fid, '%s\t%f\t%f\n', genes{k}, grRatio(k), grRateKO(k));
        end
        fclose(fid);
end
