# Estimation population mean (Estimation of 1 Mean)
# z is confidence interval.
# s is standard deviation.
# e is error.

Nepm =function(z,s,e){
n = ceiling((z^2 * s^2)/(e^2))
return(n)
}

