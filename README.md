# MetaAnalysis
Here we detail the workflow utilized in a comparative metagenomics analysis of PCE, PCB, and PCDD-fed Metagenomes.


### Dataset availability:
All datasets used in this analysis are cited below can be obtained from the NCBI Short Read Archive (SRA) according to the following accession numbers.

Wang, Shanquan, et al. "Microbial synergistic interactions for reductive dechlorination of polychlorinated biphenyls." Science of the Total Environment 666 (2019): 368-376.
PCB-fed metagenomes for strains CG3 and SG1 (Accession: SRR2062390, SRR2062395)
PCE-fed metagenomes for strains CG3 and SG1 (Accession: SRR2062392, SRR2062398) 

Wang, Shanquan, et al. "Genomic characterization of three unique Dehalococcoides that respire on persistent polychlorinated biphenyls." Proceedings of the National Academy of Sciences 111.33 (2014): 12103-12108.
PCB-fed metagenomes for strains CG1, CG4 and CG5 (Accession: SRR1050524, SRR1050519, SRR1050527)
PCE-fed metagenomes for strains CG1, CG4 and CG5 (Accession: SRR1050525, SRR1050523, SRR1050528)

Dam, Hang T., et al. "Reconstructed genomes of novel Dehalococcoides mccartyi strains from 1, 2, 3, 4-tetrachlorodibenzo-p-dioxin-dechlorinating enrichment cultures reveal divergent reductive dehalogenase gene profiles." FEMS microbiology ecology 93.12 (2017)
PCDD-fed sediment metagenomes (Accession: SRR6284161, SRR6284162)

Ewald, Jessica M., et al "Comparative metagenomics reveals key functional differences between Dehalococcoides-containing consortia in the presence of halogenated aromatic contaminants" Submitted to FEMS microbial ecology December 2021.
PCB-sediment microcosms (Accession: SRR15035646, SRR15035645)

To obtain the datasets, we reccomend using [SRA Explorer](https://sra-explorer.info/) to search the SRA, add desired datasets to a collection, and generate a bash script that downloads and renames the FASTq files.


"
### Analysis Pipeline :
All software installed in miniconda environments procured via the bioconda repository, to bulid databases and otherwise prepare software prior to running follow instructions on the softwares github page. The Github pages for each software are linked within the run files.


### Reproducible Directory Structure for Generalizable Workflow :

The analysis pipeline incorporates several key features meant to aid in reproducibility. If users would like more background on these processes, we reccomend checking out [riffomonas](https://riffomonas.org/reproducible_research/) for extensive training and tutorials. 
