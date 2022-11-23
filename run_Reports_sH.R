
# Carrego Markdown
library("rmarkdown")
library("dplyr")
library("ggplot2")

# Llegeixo les dades amb un altre script
# setwd("~/Library/CloudStorage/OneDrive-UniversitatdeBarcelona/Consultoria/ISPC/Proves Reports/")

source("read_final_data.R")

slices <- report_demograficos

for(i in 1:nrow(slices)){
  render("Report_sH.Rmd",
         output_file=paste0("./results/",
                            report_demograficos$data1.Nombre[i],
                            "_resultats_",
                            report_demograficos$clave[i],
                            ".pptx"),
         params=list(id=paste(i),
                     Clave=report_demograficos$clave[i],
                     Edad=report_demograficos$data1.Edad[i],
                     Sexo=report_demograficos$data1.Sexo[i],
                     Estudios=report_demograficos$data1.Estudios[i],
                     Correo=report_demograficos$data1.Correo[i],
                     Puesto=report_demograficos$data1.Puesto[i],
                     Sector=report_demograficos$data1...10.[i],
                     Provincia=report_demograficos$data1.Provincia[i],
                     
                     POS.pz=POS.pz[i],
                     
                     WAS.pz=WAS.pz[i],
                     
                     BSI18.pz=BSI18.pz[i],
                     BSI18.ansv.pz=BSI18.ansv.pz[i],
                     BSI18.anss.pz=BSI18.anss.pz[i],
                     BSI18.depr.pz=BSI18.depr.pz[i],
                     
                     UWES.pz=UWES.pz[i],
                     UWES.vgr.pz=UWES.vgr.pz[i],
                     UWES.dedc.pz=UWES.dedc.pz[i],
                     UWES.absr.pz=UWES.absr.pz[i],
                     
                     BFIXS.ama.pz=BFIXS.ama.pz[i],
                     BFIXS.emon.pz=BFIXS.emon.pz[i],
                     BFIXS.respo.pz=BFIXS.respo.pz[i],
                     BFIXS.apex.pz=BFIXS.apex.pz[i],
                     BFIXS.extra.pz=BFIXS.extra.pz[i],
                     
                     PRIMAEF.cgrt.pz=PRIMAEF.cgrt.pz[i],
                     PRIMAEF.cont.pz=PRIMAEF.cont.pz[i],
                     PRIMAEF.relp.pz=PRIMAEF.relp.pz[i],
                     PRIMAEF.parc.pz=PRIMAEF.parc.pz[i],
                     PRIMAEF.dper.pz=PRIMAEF.dper.pz[i],
                     PRIMAEF.corg.pz=PRIMAEF.corg.pz[i],
                     PRIMAEF.intr.pz=PRIMAEF.intr.pz[i],
                     PRIMAEF.valg.pz=PRIMAEF.valg.pz[i],
                     
                     PCQ12.autf.pz=PCQ12.autf.pz[i],
                     PCQ12.hope.pz=PCQ12.hope.pz[i],
                     PCQ12.rsl.pz=PCQ12.rsl.pz[i],
                     PCQ12.optm.pz=PCQ12.optm.pz[i],
                     PCQ12.cap_psy.pz=PCQ12.cap_psy.pz[i]
                     )
         )
}


# render("./markdowns/Report.Rmd",
#        output_file=paste0("./results/", report_demografics$Seccio[1],"_resultats_", report_demografics$Clau[1], ".pptx"),
#        params=list(id=paste(1),
#                    Clau=report_demografics$Clau[1],
#                    Seccio=report_demografics$Seccio[1],
#                    Edat=report_demografics$Edat[1],
#                    Estudis=report_demografics$Estudis[1],
#                    Sexe=report_demografics$Sexe[1],
#                    
#                    IER=IER[1],
#                    
#                    NORM_H=NORM_HEXACO$NORM_H[1],
#                    NORM_E=NORM_HEXACO$NORM_E[1],
#                    NORM_X=NORM_HEXACO$NORM_X[1],
#                    NORM_A=NORM_HEXACO$NORM_A[1],
#                    NORM_C=NORM_HEXACO$NORM_C[1],
#                    NORM_O=NORM_HEXACO$NORM_O[1],
#                    
#                    SD_H=SD_HEXACO$SD_H[1],
#                    SD_E=SD_HEXACO$SD_E[1],
#                    SD_X=SD_HEXACO$SD_X[1],
#                    SD_A=SD_HEXACO$SD_A[1],
#                    SD_C=SD_HEXACO$SD_C[1],
#                    SD_O=SD_HEXACO$SD_O[1],
#                    SD_Desitjabilitat=SD_HEXACO$SD_Desitjabilitat[1],
#                    
#                    PL_H=PL_HEXACO$PL_H[1],
#                    PL_E=PL_HEXACO$PL_E[1],
#                    PL_X=PL_HEXACO$PL_X[1],
#                    PL_A=PL_HEXACO$PL_A[1],
#                    PL_C=PL_HEXACO$PL_C[1],
#                    PL_O=PL_HEXACO$PL_O[1],
#                    
#                    GR_H=GR_HEXACO$GR_H[1],
#                    GR_E=GR_HEXACO$GR_E[1],
#                    GR_X=GR_HEXACO$GR_X[1],
#                    GR_A=GR_HEXACO$GR_A[1],
#                    GR_C=GR_HEXACO$GR_C[1],
#                    GR_O=GR_HEXACO$GR_O[1],
#                    
#                    SF12_F=SF12$SF12_Físic[1],
#                    SF12_M=SF12$SF12_Mental[1],
#                    
#                    BSI18_AVV=BSI18$BSI_AnsietatVV[1],
#                    BSI18_AS=BSI18$BSI_AnsietatS[1],
#                    BSI18_D=BSI18$BSI_Depressio[1],
#                    BSI18_M=BSI18$BSI_Malestar[1]
#        )
# )

# **`r params$Edad`**


