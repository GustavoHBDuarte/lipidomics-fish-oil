# lipidomics-fish-oil
This repo describes the statistical analysis carried out in the following publication: https://doi.org/10.1016/j.foodres.2019.108874


##  Bio-synthesized sardine oil concentrate alters the composition of hepatic lipids in rats: A lipidomic approach

### Abstract

Both preventive and curative therapies have created a considerable demand for _n-3_ PUFAs (polyunsaturated fatty acids) from fish oil, such as eicosapentaenoic (EPA) and docosahexaenoic (DHA) acids, for human use. Bio-synthesized sardine oil (bioSO) concentrate containing an acylglycerols mixture with 50% _n-3_ PUFAs was obtained by _Candida cylindracea_ lipase hydrolysis and subsequently used for _in vivo_ tests in animals. Wistar rats received, by gavage, a dose of 0.2 g/kg/day of bioSO or unmodified sardine oil (unSO) or saline solution (control) for three consecutive days and the liver tissue was evaluated by a selective and sensitive lipidomic approach based on ultra-performance liquid chromatography–quadruple time-of-flight mass spectrometry (UPLC-QTOF-MSE) and gas chromatography (GC). In addition, antioxidant parameters, response of oxidative stress marker and estimated fatty acid desaturase indexes were determined. The use of bioSO led to an increase in Cer d18:1/16:0, PE-Cer d14:2/18:0 and highly unsaturated phosphatylcholines (PC 38:4, PC 40:6 and PC 42:8) in the hepatic tissue membranes. There was also an increase in DHA incorporation in animals that received bioSO in comparison with the control animals. No differences in superoxide dismutase and catalase activity levels were observed between the groups, and malondialdehyde levels and delta 5-desaturase activity were higher in animals supplemented with bioSO. These results indicate that bioSO increase the hepatic incorporation of DHA, especially those esterified as PCs, and are probably absorbed and transported more effectively than the unSO. Enzymatically hydrolyzed compounds containing antioxidants may be a viable alternative for obtaining _n-3_ PUFA-enriched functional lipids.

###  Data analysis

Data analysis was carried out in MetaboAnalyst. This interface is designed to perform most of the common kinds of metabolomic data analysis. Unpaired analysis of variance (ANOVA) was used as univariate statistical analysis and Benjamini-Hochberg correction was used for false discovery rate (FDR) adjustment; molecular features with p below 0.05 were considered statistically significant.
For multivariate data analysis a sparse partial least square discriminant analysis (sPLS-DA) model was built using significant features, and the resulting model was evaluated by cross validation. sPLS-DA enables the
selection of the most predictive or discriminative features in the data that help classify the samples. This approach performs variable selection and classification in a one step procedure. Data were normalized by sum
and pareto-scaled before performing statistics.
