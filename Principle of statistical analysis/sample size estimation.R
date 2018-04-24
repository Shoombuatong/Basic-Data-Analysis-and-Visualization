# Estimation population mean (Estimation of 1 Mean)
# z is a confidence interval.
# sd is a standard deviation.
# e is an error.

NE1M =function(z,sd,e){
n = ceiling((z^2 * sd^2)/(e^2))
return(n)
}

# Estimation population proportion (Estimation of 1 proportion)
# z is a confidence interval.
# p is a proportion.
# e is an error.

NE1P =function(z,p,e){
n = ceiling((z^2 *p*(1-p))/(e^2))
return(n)
}

# Comparing 2 proportions
# z0 is a confidence interval of a control group.
# z1 is a confidence interval of a study grpup.
# p0 is a proportion of a control group.
# p1 is a proportion of a study grpup.

NC2P =function(z0,z1,p0,p1){
up = z0*sqrt(p0*(1-p0))+z1*sqrt(p1*(1-p1))
down = p1-p0
n = ceiling((up/down)^2)
return(n)
}

# Comparing 2 means independent
# z0 is a confidence interval of a control group.
# z1 is a confidence interval of a study grpup.
# p0 is the mean of a control group.
# p1 is the mean of a study group.
# sd is a standard deviation.

NC2M =function(z_alpha,z_beta,p0,p1,sd){
up = (z0 + z1)*sd
down = p1-p0
n = ceiling((up/down)^2)
return(n)
}

# Comparing 2 means dependent
# z0 is a confidence interval of a control group.
# z1 is a confidence interval of a study grpup.
# p0 is a proportion of a control group.
# p1 is a proportion of a study grpup.

NC2M =function(z0,z1,p0,p1,sd){
up = (z0 + z1)*sd
down = p1-p0
n = ceiling((up/down)^2)
return(n)
}


