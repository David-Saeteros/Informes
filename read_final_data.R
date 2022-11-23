
# read final data
library(stringr)

final <- read.csv("Para informes_sH.csv",
                  sep = ";") 


# final$data1.Nombre <- str_replace(final$data1.Nombre, "<f3>", "ó")

#final <- head(final)

report_demograficos <- final[,1:10]

POS.pd <- final[,11]
POS.pz <- final[,12]

BSI18.pd <- final[,13]
BSI18.pz <- final[,14]
BSI18.ansv.pd <- final[,15]
BSI18.ansv.pz <- final[,16]
BSI18.anss.pd <- final[,17]
BSI18.anss.pz <- final[,18]
BSI18.depr.pd <- final[,19]
BSI18.depr.pz <- final[,20]

WAS.pd <- final[, 21]
WAS.pz <- final[, 22]

UWES.pd <- final[,23]
UWES.pz <- final[,24]
UWES.vgr.pd <- final[,25]
UWES.vgr.pz <- final[,26]
UWES.dedc.pd <- final[,27]
UWES.dedc.pz <- final[,28]
UWES.absr.pd <- final[,29]
UWES.absr.pz <- final[,30]

BFIXS.ama.pd <- final[,31]
BFIXS.ama.pz <- final[,32]
BFIXS.emon.pd <- final[,33]
BFIXS.emon.pz <- final[,34]
BFIXS.respo.pd <- final[,35]
BFIXS.respo.pz <- final[,36]
BFIXS.apex.pd <- final[,37]
BFIXS.apex.pz <- final[,38]
BFIXS.extra.pd <- final[,39]
BFIXS.extra.pz <- final[,40]

PRIMAEF.cgrt.pd <- final[,41]
PRIMAEF.cgrt.pz <- final[,42]
PRIMAEF.cont.pd <- final[,43]
PRIMAEF.cont.pz <- final[,44]
PRIMAEF.relp.pd <- final[,45]
PRIMAEF.relp.pz <- final[,46]
PRIMAEF.parc.pd <- final[,47]
PRIMAEF.parc.pz <- final[,48]
PRIMAEF.dper.pd <- final[,49]
PRIMAEF.dper.pz <- final[,50]
PRIMAEF.corg.pd <- final[,51]
PRIMAEF.corg.pz <- final[,52]
PRIMAEF.intr.pd <- final[,53]
PRIMAEF.intr.pz <- final[,54]
PRIMAEF.valg.pd <- final[,55]
PRIMAEF.valg.pz <- final[,56]

PCQ12.autf.pd <- final[,57]
PCQ12.autf.pz <- final[,58]
PCQ12.hope.pd <- final[,59]
PCQ12.hope.pz <- final[,60]
PCQ12.rsl.pd <- final[,61]
PCQ12.rsl.pz <- final[,62]
PCQ12.optm.pd <- final[,63]
PCQ12.optm.pz <- final[,64]
PCQ12.cap_psy.pd <- final[,65]
PCQ12.cap_psy.pz <- final[,66]

# For missing data
#install.packages("mice")
#install.packages("VIM")
#
#library(mice)
#library(VIM)
#
#md.pattern(final, rotate.names = TRUE)
#
#
#missing.data <- final[, c(56,57,58,59,60,61,62,63,
#                          64,65,66)]
#missing.data2 <- mice(missing.data,
#                           m=5,
#                           maxit = 50,
#                           method = "pmm",
#                           seed = 1973)
#
#summary(missing.data2)
#
#missing.data2$imp$primaef.p.z.valg
#missing.data2$imp$pcq12.p.d.autf
#
#completeData <- complete(missing.data2, 2)
#
#
#md.pattern(completeData, rotate.names = TRUE)
#

