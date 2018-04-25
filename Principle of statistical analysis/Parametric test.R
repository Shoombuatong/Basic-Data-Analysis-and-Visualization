# One-sample t-tests
#Ex. An outbreak of Salmonella-related illness was attributed to ice cream produced at a certain factory. 
Scientists measured the level of Salmonella in 9 randomly sampled batches of ice cream.

x = c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3)

# Two-sample t-tests
#6 subjects were given a drug (treatment group) and an additional 6 subjects a placebo (control group). 
Their reaction time to a stimulus was measured (in ms). We want to perform a two-sample t-test for comparing the means 
of the treatment and control groups. 

Control = c(91, 87, 99, 77, 88, 91)
Treat = c(101, 110, 103, 93, 99, 104)
t.test(Control,Treat,alternative="less", var.equal=TRUE)
