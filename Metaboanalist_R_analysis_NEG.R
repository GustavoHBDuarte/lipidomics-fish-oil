
# Loading library
library(MetaboAnalystR)

# Starting Rserve...
mSet<-InitDataObjects("pktable", "stat", FALSE)

# Loading .csv raw file
mSet<-Read.TextData(mSet, "D:/Gustavo/Animais/Negativo/USF_animais_LCMS_n_23jan_gustavo_RESULTS/data_original.csv");

# Runing Sanity check
mSet<-SanityCheckData(mSet)


mSet<-ReplaceMin(mSet);

# Filtering (no filtering applied)
mSet<-FilterVariable(mSet, "none", "F", 25)


mSet<-PreparePrenormData(mSet)

# Normalization (by sum, pareto scaling)
mSet<-Normalization(mSet, "SumNorm", "NULL", "ParetoNorm", ratio=FALSE, ratioNum=20)


mSet<-PlotNormSummary(mSet, "norm_0_", "png", 72, width=NA)


mSet<-PlotSampleNormSummary(mSet, "snorm_0_", "png", 72, width=NA)

# ANOVA
mSet<-ANOVA.Anal(mSet, F, 0.05, "fisher")

# sPLSDA
mSet<-SPLSR.Anal(mSet, 2, 10, "same")

mSet<-PlotSPLSPairSummary(mSet, "spls_pair_0_", "png", 72, width=NA, 5)

mSet<-PlotSPLS2DScore(mSet, "spls_score2d_0_", "png", 72, width=NA, 1,2,0.95,0,0) #sPLS scores

mSet<-PlotSPLSLoading(mSet, "spls_loading_0_", "png", 72, width=NA, 1,"overview"); #sPLS loadings


mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_0_", "Mfold", "png", 72, width=NA) # classification error
mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_1_", "loo", "png", 72, width=NA) 
mSet<-PlotSPLSDA.Classification(mSet, "spls_cv_2_", "Mfold", "png", 72, width=NA)

mSet<-PlotHeatMap(mSet, "heatmap_0_",
                  "png", 72,
                  width=NA,
                  "norm",
                  "row", "euclidean", "ward.D","bwm", "overview", T, T, NA, T, F) # heatmap

