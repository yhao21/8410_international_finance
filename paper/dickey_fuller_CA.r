





canada = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/canada.csv')
denmark = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/denmark.csv')
iceland = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/iceland.csv')
norway = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/norway.csv')
singapore = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/singapore.csv')
switzerland = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/switzerland.csv')
us = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/us.csv')
finland = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/finland.csv')
france = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/france.csv')
germany = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/germany.csv')
italy = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/italy.csv')
netherlands = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/netherlands.csv')
sweden = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/sweden.csv')
thailand = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/thailand.csv')
uk = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/uk.csv')



##--------## Dickey Fuller Test

## Canada
# remove the first three rows
canada = canada[-c(1,2,3),]
# run OLS and do dickey fuller
canada_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = canada)
summary(canada_ols)

#c = -1.951
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept)  13.74930  115.93584   0.119   0.9063
#d_ca_t.1      0.19096    0.16532   1.155   0.2559
#d_ca_t.2      0.10178    0.16965   0.600   0.5524
#ca_t.1       -0.16905    0.08665  -1.951   0.0591 .
#t            -4.39042    4.88684  -0.898   0.3751



## Denmark
# remove the first three rows
denmark = denmark[-c(1,2,3),]
# run OLS and do dickey fuller
denmark_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = denmark)
summary(denmark_ols)

#c = -1.573
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) -375.5475   287.6239  -1.306   0.2002
#d_ca_t.1      -0.1708     0.1721  -0.993   0.3276
#d_ca_t.2      -0.1211     0.1683  -0.719   0.4766
#ca_t.1        -0.1812     0.1152  -1.573   0.1247
#t             35.2610    17.4967   2.015   0.0516 .



## Iceland
# remove the first three rows
iceland = iceland[-c(1,2,3),]
# run OLS and do dickey fuller
iceland_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = iceland)
summary(iceland_ols)

#c = -1.944
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) -5.764e+02  8.085e+02  -0.713   0.4806
#d_ca_t.1     6.866e-03  1.718e-01   0.040   0.9683
#d_ca_t.2     2.967e-01  1.678e-01   1.768   0.0858 .
#ca_t.1      -2.092e-01  1.076e-01  -1.944   0.0600 .
#t            1.550e+01  3.242e+01   0.478   0.6355



## Norway
# remove the first three rows
norway = norway[-c(1,2,3),]
# run OLS and do dickey fuller
norway_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = norway)
summary(norway_ols)

#c =-0.519
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) 649.55202  877.09624   0.741    0.464
#d_ca_t.1     -0.13874    0.18934  -0.733    0.469
#d_ca_t.2     -0.20709    0.19298  -1.073    0.291
#ca_t.1       -0.07003    0.13499  -0.519    0.607
#t           -10.02906   54.05162  -0.186    0.854







## Singapore
# remove the first three rows
singapore = singapore[-c(1,2,3),]
# run OLS and do dickey fuller
singapore_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = singapore)
summary(singapore_ols)

#c = -2.643
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) -1176.9063   682.8406  -1.724   0.0936 .
#d_ca_t.1        0.2147     0.1572   1.366   0.1808
#d_ca_t.2       -0.3454     0.1541  -2.241   0.0315 *
#ca_t.1         -0.4890     0.1850  -2.643   0.0122 *
#t             162.5707    62.2150   2.613   0.0131 *




## Switzerland
# remove the first three rows  
switzerland = switzerland[-c(1,2,3),]
# run OLS and do dickey fuller
switzerland_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = switzerland)
summary(switzerland_ols)

#c = -2.138
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) -193.9507   638.2088  -0.304   0.7630
#d_ca_t.1       0.1029     0.2253   0.457   0.6507
#d_ca_t.2      -0.1728     0.1915  -0.903   0.3728
#ca_t.1        -0.5988     0.2801  -2.138   0.0396 *
#t            110.7675    63.3735   1.748   0.0893 .



## US
# remove the first three rows  
us = us[-c(1,2,3),]
# run OLS and do dickey fuller
us_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = us)
summary(us_ols)

#c = -2.215
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) -28.49717   84.62148  -0.337   0.7383
#d_ca_t.1      0.26134    0.16007   1.633   0.1115
#d_ca_t.2      0.24888    0.16963   1.467   0.1513
#ca_t.1       -0.17534    0.07916  -2.215   0.0334 *
#t            -7.23450    5.08771  -1.422   0.1639





## finland
# remove the first three rows  
finland = finland[-c(1,2,3),]
# run OLS and do dickey fuller
finland_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = finland)
summary(finland_ols)

#c = -1.791
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept)  29.57282  162.75523   0.182   0.8569
#d_ca_t.1      0.04522    0.16774   0.270   0.7891
#d_ca_t.2      0.36513    0.16888   2.162   0.0375 *
#ca_t.1       -0.12658    0.07068  -1.791   0.0820 .
#t             0.29199    6.58181   0.044   0.9649




## france
# remove the first three rows  
france = france[-c(1,2,3),]
# run OLS and do dickey fuller
france_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = france)
summary(france_ols)

#c = -1.791
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept)  29.57282  162.75523   0.182   0.8569
#d_ca_t.1      0.04522    0.16774   0.270   0.7891
#d_ca_t.2      0.36513    0.16888   2.162   0.0375 *
#ca_t.1       -0.12658    0.07068  -1.791   0.0820 .
#t             0.29199    6.58181   0.044   0.9649






## germany
# remove the first three rows  
germany = germany[-c(1,2,3),]
# run OLS and do dickey fuller
germany_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = germany)
summary(germany_ols)

#c = -1.660
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) 20.76725   60.52341   0.343    0.734
#d_ca_t.1    -0.08994    0.17706  -0.508    0.615
#d_ca_t.2     0.13662    0.17124   0.798    0.430
#ca_t.1      -0.16321    0.09832  -1.660    0.106
#t           -1.29884    2.43464  -0.533    0.597




## italy
# remove the first three rows  
italy = italy[-c(1,2,3),]
# run OLS and do dickey fuller
italy_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = italy)
summary(italy_ols)

#c = -1.619
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) -125.94532  136.88450  -0.920   0.3638
#d_ca_t.1       0.07450    0.16884   0.441   0.6617
#d_ca_t.2       0.14684    0.16930   0.867   0.3917
#ca_t.1        -0.10500    0.06485  -1.619   0.1144
#t             13.74253    7.90104   1.739   0.0908 .




## netherlands
# remove the first three rows  
netherlands = netherlands[-c(1,2,3),]
# run OLS and do dickey fuller
netherlands_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = netherlands)
summary(netherlands_ols)

#c = -1.805
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) -84.9376   101.6872  -0.835   0.4092
#d_ca_t.1      0.1497     0.1733   0.864   0.3934
#d_ca_t.2      0.1835     0.1762   1.041   0.3050
#ca_t.1       -0.1958     0.1085  -1.805   0.0797 .
#t             4.2405     4.0613   1.044   0.3036




## sweden
# remove the first three rows  
sweden = sweden[-c(1,2,3),]
# run OLS and do dickey fuller
sweden_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = sweden)
summary(sweden_ols)

#c = -2.361
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) -244.72814  218.04498  -1.122   0.2693
#d_ca_t.1       0.23268    0.18209   1.278   0.2097
#d_ca_t.2       0.19698    0.18620   1.058   0.2973
#ca_t.1        -0.23272    0.09856  -2.361   0.0239 *
#t             26.04817   12.71214   2.049   0.0480 *



## thailand
# remove the first three rows  
thailand = thailand[-c(1,2,3),]
# run OLS and do dickey fuller
thailand_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = thailand)
summary(thailand_ols)

#c = -2.924
#
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) -102.8726    52.4043  -1.963  0.05763 .
#d_ca_t.1       0.2208     0.1734   1.273  0.21129
#d_ca_t.2       0.2068     0.1934   1.069  0.29223
#ca_t.1        -0.4951     0.1693  -2.924  0.00602 **
#t              6.1806     2.3522   2.628  0.01268 *


## uk
# remove the first three rows  
uk = uk[-c(1,2,3),]
# run OLS and do dickey fuller
uk_ols = lm(d_ca~d_ca_t.1+d_ca_t.2+ca_t.1+t, data = uk)
summary(uk_ols)


#c = -3.805
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) 253.5645   124.9741   2.029 0.050125 .
#d_ca_t.1      0.3211     0.1615   1.989 0.054617 .
#d_ca_t.2      0.3700     0.1706   2.169 0.036977 *
#ca_t.1       -0.5643     0.1483  -3.805 0.000546 ***
#t           -30.0437     9.0911  -3.305 0.002201 **




