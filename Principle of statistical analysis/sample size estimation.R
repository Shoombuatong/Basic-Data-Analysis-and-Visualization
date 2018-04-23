# Estimation population mean (Estimation of 1 Mean)
# z is confidence interval.
# s is standard deviation.
# e is error.

Nepm =function(z,s,e){
n = ceiling((z^2 * s^2)/(e^2))
return(n)
}

# Estimation population proportion (Estimation of 1 proportion)
# z is confidence interval.
# s is standard deviation.
# e is error.

Nepp =function(z,p,e){
n = ceiling((z^2 *p*(1-p))/(e^2))
return(n)
}
