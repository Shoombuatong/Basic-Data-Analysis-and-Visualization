############ Set directory
setwd('D:\\Workshop')
data = read.csv("Diabetes.csv", header=T)


################### Removing missing data
data = na.omit(data)

########################### Mean, S.D. and t-test
m = ncol(data)
k = m-1
meanX  <- matrix(nrow = k, ncol = 1)
sdX  <- matrix(nrow = k, ncol = 1)
meanY  <- matrix(nrow = k, ncol = 1)
sdY  <- matrix(nrow = k, ncol = 1)
p.value  <- matrix(nrow = k, ncol = 1)
m = ncol(data)
k = m-1

for(i in 1:k){ 
		X <- subset(data.frame(data[,i],class =data[,m]), class == 'positive')
		Y <- subset(data.frame(data[,i],class =data[,m]), class == 'negative')
	meanX[i,]  = mean(as.numeric(X[,1]))
	sdX[i,]  = sd(as.numeric(X[,1]))
	meanY[i,]  = mean(as.numeric(Y[,1]))
	sdY[i,]  = sd(as.numeric(Y[,1]))
	p.value[i,]  = t.test(as.numeric(X[,1]),as.numeric(Y[,1]))$ p.value
}

result = data.frame (meanX,sdX,meanY,sdY, p.value)
write.csv(result, file="stat result.csv", row.name=TRUE)



