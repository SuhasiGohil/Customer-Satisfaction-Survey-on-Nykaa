

PCA - 

library(psych)
data <- read.csv("C:/Users/HP/Desktop/RDS/;))/All Presentations/SMMA_Nykaa_Mastersheet.csv")
dataPCA <- data[,11:19]
str(dataPCA)
cor(dataPCA)

model_1<- principal(dataPCA, nfactors = 9, rotate = "none", covar = FALSE)
model_1$values
model_1$loadings
plot(model_1$values, type = "b", xlab = "Component number", ylab = "Eigen value", main = "Scree plot", col = "navyblue")

model_2 <- principal(dataPCA, nfactors = 2, rotate = "varimax", covar = FALSE)
model_2$loadings
biplot(model_2, col=c("steelblue1", "firebrick2"), main = "Biplot for two rotated principal components")


FA - 

dataFA <- data[,11:19]
model_3 <- factanal(dataFA, factor = 2)

model_4 <- factanal(dataFA, factor = 2, rotation="varimax")
model_4






