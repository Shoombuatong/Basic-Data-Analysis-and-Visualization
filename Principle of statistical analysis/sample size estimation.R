# Estimation population mean (Estimation of 1 Mean)
# z is confidence interval.
# s is standard deviation.
# e is error.

NE1P =function(z,s,e){
n = ceiling((z^2 * s^2)/(e^2))
return(n)
}

# Estimation population proportion (Estimation of 1 proportion)
# z is confidence interval.
# p is proportion.
# e is error.

NE1P =function(z,p,e){
n = ceiling((z^2 *p*(1-p))/(e^2))
return(n)
}


# Comparing 2 proportion2 
# z is confidence interval.
# s is standard deviation.
# e is error.

NC2P =function(z0,z1,p0,p1){
up = z0*sqrt(p0*(1-p0))+z1*sqrt(p1*(1-p1))
down = p1-p0
n = ceiling((up/down)^2)
return(n)
}
