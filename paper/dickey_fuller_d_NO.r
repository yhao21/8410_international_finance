




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
canada_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = canada)
summary(canada_ols)


# c = -0.997
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) 2459.7770  1831.3235   1.343    0.188
#d_no_t.1      -0.2029     0.1755  -1.156    0.255
#d_no_t.2      -0.2772     0.1672  -1.658    0.106
#no_t.1        -0.1219     0.1223  -0.997    0.326
#t             33.3855    43.6838   0.764    0.450


## Denmark
# remove the first three rows
denmark = denmark[-c(1,2,3),]
# run OLS and do dickey fuller
denmark_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = denmark)
summary(denmark_ols)


#c = -1.914
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 2085.90673  906.00977   2.302   0.0274 *
#d_no_t.1       0.30425    0.18771   1.621   0.1140
#d_no_t.2      -0.00755    0.19660  -0.038   0.9696
#no_t.1        -0.18823    0.09836  -1.914   0.0639 .
#t             79.57759   43.70527   1.821   0.0772 .





## Iceland
# remove the first three rows
iceland = iceland[-c(1,2,3),]
# run OLS and do dickey fuller
iceland_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = iceland)
summary(iceland_ols)

#c = -3.187
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 6473.40042 2073.01363   3.123  0.00359 **
#d_no_t.1       0.48407    0.15402   3.143  0.00340 **
#d_no_t.2      -0.05298    0.17180  -0.308  0.75962
#no_t.1        -0.48444    0.15200  -3.187  0.00302 **
#t            132.75862   48.52577   2.736  0.00970 **


## Norway
# remove the first three rows
norway = norway[-c(1,2,3),]
# run OLS and do dickey fuller
norway_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = norway)
summary(norway_ols)

#c = -0.863
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 2307.60139 1691.98977   1.364    0.181
#d_no_t.1       0.05985    0.17909   0.334    0.740
#d_no_t.2      -0.06879    0.18869  -0.365    0.718
#no_t.1        -0.09361    0.10845  -0.863    0.394
#t             58.13042  150.76659   0.386    0.702


## Singapore
# remove the first three rows
singapore = singapore[-c(1,2,3),]
# run OLS and do dickey fuller
singapore_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = singapore)
summary(singapore_ols)

#c = -2.109
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) -2.269e+03  1.689e+03  -1.343   0.1879
#d_no_t.1     2.479e-02  1.629e-01   0.152   0.8800
#d_no_t.2    -1.961e-01  1.607e-01  -1.220   0.2305
#no_t.1      -2.561e-01  1.214e-01  -2.109   0.0421 *
#t            3.823e+02  1.548e+02   2.470   0.0185 *


## Switzerland
# remove the first three rows  
switzerland = switzerland[-c(1,2,3),]
# run OLS and do dickey fuller
switzerland_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = switzerland)
summary(switzerland_ols)

#c = -2.753
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 3805.18906 1256.75155   3.028  0.00460 **
#d_no_t.1      -0.04252    0.14718  -0.289  0.77436
#d_no_t.2      -0.24302    0.14594  -1.665  0.10480
#no_t.1        -0.25001    0.09080  -2.753  0.00929 **
#t            211.73085   71.24334   2.972  0.00532 **



## US
# remove the first three rows  
us = us[-c(1,2,3),]
# run OLS and do dickey fuller
us_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = us)
summary(us_ols)

#c = -2.986
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 4230.39766 1330.39855   3.180  0.00308 **
#d_no_t.1       0.38393    0.15120   2.539  0.01571 *
#d_no_t.2       0.26815    0.16305   1.645  0.10900
#no_t.1        -0.22915    0.07675  -2.986  0.00514 **
#t            127.65907   42.47713   3.005  0.00488 **


## finland
# remove the first three rows  
finland = finland[-c(1,2,3),]
# run OLS and do dickey fuller
finland_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = finland)
summary(finland_ols)

#c = -1.548
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 1045.69960  531.59365   1.967   0.0571 .
#d_no_t.1       0.21500    0.17248   1.246   0.2209
#d_no_t.2       0.19107    0.17406   1.098   0.2798
#no_t.1        -0.10273    0.06635  -1.548   0.1305
#t             38.86697   29.83422   1.303   0.2012


## france
# remove the first three rows  
france = france[-c(1,2,3),]
# run OLS and do dickey fuller
france_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = france)
summary(france_ols)

#c = -1.021
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) 998.88482  562.80961   1.775  0.08463 .
#d_no_t.1      0.44883    0.16284   2.756  0.00922 **
#d_no_t.2     -0.12718    0.17124  -0.743  0.46261
#no_t.1       -0.07320    0.07168  -1.021  0.31414
#t            38.40162   42.03161   0.914  0.36716


## germany
# remove the first three rows  
germany = germany[-c(1,2,3),]
# run OLS and do dickey fuller
germany_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = germany)
summary(germany_ols)

#c = -1.436
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 1030.25670  586.39362   1.757  0.08767 .
#d_no_t.1       0.55976    0.16279   3.439  0.00153 **
#d_no_t.2      -0.08005    0.17040  -0.470  0.64143
#no_t.1        -0.07293    0.05080  -1.436  0.16001
#t             22.21919   18.04278   1.231  0.22636


## italy
# remove the first three rows  
italy = italy[-c(1,2,3),]
# run OLS and do dickey fuller
italy_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = italy)
summary(italy_ols)

#c = -1.630
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 1579.05416  860.11530   1.836   0.0749 .
#d_no_t.1       0.34296    0.16181   2.119   0.0412 *
#d_no_t.2      -0.11246    0.16727  -0.672   0.5058
#no_t.1        -0.12262    0.07524  -1.630   0.1121
#t             63.10963   40.98996   1.540   0.1326



## netherlands
# remove the first three rows  
netherlands = netherlands[-c(1,2,3),]
# run OLS and do dickey fuller
netherlands_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = netherlands)
summary(netherlands_ols)

#c = -1.630
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 1579.05416  860.11530   1.836   0.0749 .
#d_no_t.1       0.34296    0.16181   2.119   0.0412 *
#d_no_t.2      -0.11246    0.16727  -0.672   0.5058
#no_t.1        -0.12262    0.07524  -1.630   0.1121
#t             63.10963   40.98996   1.540   0.1326



## sweden
# remove the first three rows  
sweden = sweden[-c(1,2,3),]
# run OLS and do dickey fuller
sweden_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = sweden)
summary(sweden_ols)

#c = -0.868
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) 985.17946  610.60121   1.613    0.116
#d_no_t.1      0.18265    0.18104   1.009    0.320
#d_no_t.2      0.10390    0.18168   0.572    0.571
#no_t.1       -0.06263    0.07217  -0.868    0.391
#t            18.06670   34.72435   0.520    0.606


## thailand
# remove the first three rows  
thailand = thailand[-c(1,2,3),]
# run OLS and do dickey fuller
thailand_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = thailand)
summary(thailand_ols)

#c = -1.532
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) 19.68213   57.63928   0.341   0.7348
#d_no_t.1     0.15951    0.16300   0.979   0.3345
#d_no_t.2    -0.14472    0.17465  -0.829   0.4129
#no_t.1      -0.05162    0.03370  -1.532   0.1346
#t           19.74248    7.92269   2.492   0.0176 *

## uk
# remove the first three rows  
uk = uk[-c(1,2,3),]
# run OLS and do dickey fuller
uk_ols = lm(delta_NO~d_no_t.1+d_no_t.2+no_t.1+t, data = uk)
summary(uk_ols)


#c = -1.833
#              Estimate Std. Error t value Pr(>|t|)
#(Intercept) 1548.57671  731.12445   2.118   0.0413 *
#d_no_t.1       0.18718    0.16342   1.145   0.2598
#d_no_t.2       0.25997    0.16603   1.566   0.1264
#no_t.1        -0.13621    0.07432  -1.833   0.0754 .
#t             50.71576   30.72527   1.651   0.1078





