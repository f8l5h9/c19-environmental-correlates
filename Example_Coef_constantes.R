#########################################

formula <- log(Inc) ~ log(HM) + log(EM) + log(TMedmm) + log(Sunmm+.1) + log(Hummm)
model.sur.slm <- spsur::spsurtime(formula = formula, data=GPanel, time = GPanel$time, type = "slm",fit_method = "3sls",listw=listw)
summary(model.sur.slm)

## Para estimar los coef constantes hay que definir primero las restricciones

#########################################
# Por ejemplo el primer coeficiente constante
#########################################

coef_rest = 1
R2 <- matrix(0,nrow = 21*coef_rest,ncol = 6*22)
for (i in 1:21){
  R2[i,2] <- 1
  R2[i,(2+i*6)] <- -1
  # R2[i+21,3] <- 1
  # R2[i+21,(3+i*6)] <- -1
  # R2[i+21*2,4] <- 1
  # R2[i+21*2,(4+i*6)] <- -1
  # R2[i+21*3,5] <- 1
  # R2[i+21*3,(5+i*6)] <- -1
  # R2[i+21*4,6] <- 1
  # R2[i+21*4,(6+i*6)] <- -1
  # R2[2,2] <- 1
  # R2[2,(2+2*6)] <- -1
  # R2[3,2] <- 1
  # R2[3,(2+3*6)] <- -1
}
b2 <- matrix(0, ncol=21*coef_rest)

panel.sur.slm <- spsurtime(formula = formula, data=GPanel, time = GPanel$time, R=R2, b=b2, type = "sim")
summary(panel.sur.slm)

##########################################
# Primer y Segundo coeficiente constante
##########################################

coef_rest = 3
R2 <- matrix(0,nrow = 21*coef_rest,ncol = 6*22)
for (i in 1:21){
  R2[i,2] <- 1
  R2[i,(2+i*6)] <- -1
  R2[i+21,3] <- 1
  R2[i+21,(3+i*6)] <- -1
  R2[i+21*2,4] <- 1
  R2[i+21*2,(4+i*6)] <- -1
  # R2[i+21*3,5] <- 1
  # R2[i+21*3,(5+i*6)] <- -1
  # R2[i+21*4,6] <- 1
  # R2[i+21*4,(6+i*6)] <- -1
  # R2[2,2] <- 1
  # R2[2,(2+2*6)] <- -1
  # R2[3,2] <- 1
  # R2[3,(2+3*6)] <- -1
}
b2 <- matrix(0, ncol=21*coef_rest)

panel.sur.slm <- spsurtime(formula = formula, data=GPanel, time = GPanel$time, R=R2, b=b2, type = "sim")
summary(panel.sur.slm)

