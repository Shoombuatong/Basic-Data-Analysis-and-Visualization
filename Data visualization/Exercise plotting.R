relief = c(12,15,16,17,14,14,17,19,20,17,25,27,29,24,22,21,19,18,24,25,21,20,23,27,25,37,34,36,26,29)
sex <- factor(c(rep("male",15),rep("female",15)))
treatment <- factor(rep(c(rep("A",5),rep("B",5),rep("C",5)),2))
data <- data.frame(relief, sex , treatment)
data

