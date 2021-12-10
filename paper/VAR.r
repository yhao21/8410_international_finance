library(aTSA)
library(FinTS)
library(lmtest)
library(vars)
library(tseries)
library(forecast)




uk = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/uk.csv')
thailand = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/thailand.csv')
sweden = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/sweden.csv')
us = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/us.csv')
canada = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/canada.csv')
denmark = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/denmark.csv')




uk = uk[-c(1),]
df = data.frame(ca = ts(uk$ca),
								d_no = ts(uk$delta_NO)
)
uk.var = vars::VAR(df, p = 2, type = 'none')
summary(uk.var)


#  Estimation results for equation ca:
#  ===================================
#  ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#  
#           Estimate Std. Error t value Pr(>|t|)
#  ca.l1    1.072183   0.166954   6.422  1.9e-07 ***
#  d_no.l1 -0.009612   0.070887  -0.136    0.893
#  ca.l2   -0.124024   0.172623  -0.718    0.477
#  d_no.l2 -0.101877   0.069595  -1.464    0.152
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#  
#  
#  Residual standard error: 309.5 on 36 degrees of freedom
#  Multiple R-Squared: 0.9247,     Adjusted R-squared: 0.9164
#  F-statistic: 110.6 on 4 and 36 DF,  p-value: < 2.2e-16
#  
#  
#  Estimation results for equation d_no:
#  =====================================
#  d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#  
#           Estimate Std. Error t value Pr(>|t|)
#  ca.l1   -0.068925   0.380548  -0.181    0.857
#  d_no.l1  0.214903   0.161576   1.330    0.192
#  ca.l2    0.002439   0.393468   0.006    0.995
#  d_no.l2  0.266542   0.158632   1.680    0.102
#  
#  
#  Residual standard error: 705.4 on 36 degrees of freedom
#  Multiple R-Squared: 0.188,      Adjusted R-squared: 0.09775
#  F-statistic: 2.083 on 4 and 36 DF,  p-value: 0.1033
#  
#  
#  
#  Covariance matrix of residuals:
#          ca   d_no
#  ca   95260  32592
#  d_no 32592 485443
#  
#  Correlation matrix of residuals:
#           ca   d_no
#  ca   1.0000 0.1516
#  d_no 0.1516 1.0000
#  
#  










thailand = thailand[-c(1),]
df = data.frame(ca = ts(thailand$ca),
								d_no = ts(thailand$delta_NO)
)
tailand.var = vars::VAR(df, p = 2, type = 'none')
summary(tailand.var)



#   Estimation results for equation ca:
#   ===================================
#   ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1    0.55344    0.15981   3.463  0.00139 **
#   d_no.l1 -0.07752    0.06292  -1.232  0.22589
#   ca.l2    0.05453    0.14651   0.372  0.71191
#   d_no.l2 -0.12978    0.07174  -1.809  0.07883 .
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 44.02 on 36 degrees of freedom
#   Multiple R-Squared: 0.8305,     Adjusted R-squared: 0.8117
#   F-statistic: 44.11 on 4 and 36 DF,  p-value: 2.116e-13
#   
#   
#   Estimation results for equation d_no:
#   =====================================
#   d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1    0.31054    0.42528   0.730   0.4700
#   d_no.l1  0.77907    0.16744   4.653 4.32e-05 ***
#   ca.l2   -0.66003    0.38989  -1.693   0.0991 .
#   d_no.l2 -0.06874    0.19093  -0.360   0.7209
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 117.1 on 36 degrees of freedom
#   Multiple R-Squared: 0.6758,     Adjusted R-squared: 0.6398
#   F-statistic: 18.76 on 4 and 36 DF,  p-value: 2.058e-08
#   
#   
#   
#   Covariance matrix of residuals:
#            ca    d_no
#   ca   1863.7   134.2
#   d_no  134.2 13617.8
#   
#   Correlation matrix of residuals:
#             ca    d_no
#   ca   1.00000 0.02663
#   d_no 0.02663 1.00000








sweden = sweden[-c(1),]
df = data.frame(ca = ts(sweden$ca),
								d_no = ts(sweden$delta_NO)
)
sweden.var = vars::VAR(df, p = 2, type = 'none')
print(summary(sweden.var), digits = 2)


#   Estimation results for equation ca:
#   ===================================
#   ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1    0.96261    0.18144   5.305 5.89e-06 ***
#   d_no.l1 -0.05863    0.11885  -0.493    0.625
#   ca.l2   -0.14901    0.19086  -0.781    0.440
#   d_no.l2  0.11298    0.12012   0.941    0.353
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 137.3 on 36 degrees of freedom
#   Multiple R-Squared: 0.6685,     Adjusted R-squared: 0.6317
#   F-statistic: 18.15 on 4 and 36 DF,  p-value: 3.039e-08
#   
#   
#   Estimation results for equation d_no:
#   =====================================
#   d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1    0.09687    0.26536   0.365   0.7172
#   d_no.l1  0.50652    0.17382   2.914   0.0061 **
#   ca.l2   -0.09286    0.27913  -0.333   0.7413
#   d_no.l2  0.27627    0.17568   1.573   0.1246
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 200.9 on 36 degrees of freedom
#   Multiple R-Squared: 0.5406,     Adjusted R-squared: 0.4895
#   F-statistic: 10.59 on 4 and 36 DF,  p-value: 8.92e-06
#   
#   
#   
#   Covariance matrix of residuals:
#           ca  d_no
#   ca   18698  9302
#   d_no  9302 38100
#   
#   Correlation matrix of residuals:
#            ca   d_no
#   ca   1.0000 0.3485
#   d_no 0.3485 1.0000




us = us[-c(1),]
df = data.frame(ca = ts(us$ca),
								d_no = ts(us$delta_NO)
)
us.var = vars::VAR(df, p = 2, type = 'none')
print(summary(us.var), digits = 3)

#   Estimation results for equation ca:
#   ===================================
#   ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1      1.206      0.162    7.44  8.7e-09 ***
#   d_no.l1   -0.124      0.112   -1.10     0.28
#   ca.l2     -0.224      0.163   -1.37     0.18
#   d_no.l2    0.110      0.110    0.99     0.33
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 249 on 36 degrees of freedom
#   Multiple R-Squared: 0.964,      Adjusted R-squared: 0.96
#   F-statistic:  243 on 4 and 36 DF,  p-value: <2e-16
#   
#   
#   Estimation results for equation d_no:
#   =====================================
#   d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#   
#           Estimate Std. Error t value Pr(>|t|)
#   ca.l1     -0.453      0.229   -1.97   0.0561 .
#   d_no.l1    0.466      0.158    2.94   0.0057 **
#   ca.l2      0.370      0.230    1.60   0.1175
#   d_no.l2    0.284      0.156    1.82   0.0777 .
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#   
#   
#   Residual standard error: 352 on 36 degrees of freedom
#   Multiple R-Squared: 0.731,      Adjusted R-squared: 0.701
#   F-statistic: 24.4 on 4 and 36 DF,  p-value: 7.86e-10
#   
#   
#   
#   Covariance matrix of residuals:
#            ca   d_no
#   ca    60266 -15265
#   d_no -15265 121188
#   
#   Correlation matrix of residuals:
#            ca   d_no
#   ca    1.000 -0.179
#   d_no -0.179  1.000





canada = canada[-c(1),]
df = data.frame(ca = ts(canada$ca),
								d_no = ts(canada$delta_NO)
)
canada.var = vars::VAR(df, p = 2, type = 'none')
print(summary(canada.var), digits = 3)

#    Estimation results for equation ca:
#    ===================================
#    ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#    
#            Estimate Std. Error t value Pr(>|t|)
#    ca.l1     1.2224     0.2205    5.54  2.8e-06 ***
#    d_no.l1  -0.0636     0.0807   -0.79     0.44
#    ca.l2    -0.3137     0.2329   -1.35     0.19
#    d_no.l2  -0.0763     0.0567   -1.35     0.19
#    ---
#    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#    
#    
#    Residual standard error: 331 on 36 degrees of freedom
#    Multiple R-Squared: 0.863,      Adjusted R-squared: 0.847
#    F-statistic: 56.5 on 4 and 36 DF,  p-value: 5.02e-15
#    
#    
#    Estimation results for equation d_no:
#    =====================================
#    d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#    
#            Estimate Std. Error t value Pr(>|t|)
#    ca.l1    -0.3417     0.6213   -0.55     0.59
#    d_no.l1  -0.0861     0.2274   -0.38     0.71
#    ca.l2     0.0554     0.6562    0.08     0.93
#    d_no.l2  -0.1408     0.1597   -0.88     0.38
#    
#    
#    Residual standard error: 932 on 36 degrees of freedom
#    Multiple R-Squared:  0.1,       Adjusted R-squared: 7.71e-05
#    F-statistic:    1 on 4 and 36 DF,  p-value: 0.42
#    
#    
#    
#    Covariance matrix of residuals:
#             ca   d_no
#    ca   109240 218319
#    d_no 218319 810511
#    
#    Correlation matrix of residuals:
#            ca  d_no
#    ca   1.000 0.734
#    d_no 0.734 1.000
#    
#    



denmark = denmark[-c(1),]
df = data.frame(ca = ts(denmark$ca),
								d_no = ts(denmark$delta_NO)
)
denmark.var = vars::VAR(df, p = 2, type = 'none')
print(summary(denmark.var), digits = 3)


#    Estimation results for equation ca:
#    ===================================
#    ca = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#    
#            Estimate Std. Error t value Pr(>|t|)
#    ca.l1      0.786      0.181    4.33  0.00011 ***
#    d_no.l1    0.134      0.163    0.82  0.41589
#    ca.l2      0.270      0.191    1.41  0.16649
#    d_no.l2   -0.061      0.152   -0.40  0.69088
#    ---
#    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#    
#    
#    Residual standard error: 585 on 36 degrees of freedom
#    Multiple R-Squared: 0.946,      Adjusted R-squared: 0.94
#    F-statistic:  159 on 4 and 36 DF,  p-value: <2e-16
#    
#    
#    Estimation results for equation d_no:
#    =====================================
#    d_no = ca.l1 + d_no.l1 + ca.l2 + d_no.l2
#    
#            Estimate Std. Error t value Pr(>|t|)
#    ca.l1    -0.3401     0.2262   -1.50    0.141
#    d_no.l1   0.5051     0.2027    2.49    0.017 *
#    ca.l2     0.4033     0.2384    1.69    0.099 .
#    d_no.l2  -0.0208     0.1896   -0.11    0.913
#    ---
#    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#    
#    
#    Residual standard error: 729 on 36 degrees of freedom
#    Multiple R-Squared: 0.198,      Adjusted R-squared: 0.109
#    F-statistic: 2.23 on 4 and 36 DF,  p-value: 0.0853
#    
#    
#    
#    Covariance matrix of residuals:
#             ca   d_no
#    ca   334363 161035
#    d_no 161035 490813
#    
#    Correlation matrix of residuals:
#            ca  d_no
#    ca   1.000 0.398
#    d_no 0.398 1.000










