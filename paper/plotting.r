
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
uk = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/uk.csv')
thailand = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/thailand.csv')
sweden = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/sweden.csv')
us = read.csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/us.csv')


uk = uk[-c(1,2,3),]
thailand = thailand[-c(1,2,3),]
sweden = sweden[-c(1,2,3),]
us = us[-c(1,2,3),]
canada = canada[-c(1,2,3),]
denmark = denmark[-c(1,2,3),]


year = sweden$Year

#UK,thailand,sweden,us,canada, denmark
### Current Account CA_t
png('figures/ca_countries1.png')
par(mfrow = c(3,2))
plot(year, uk$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'United Kingdom')
plot(year, thailand$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'Thailand')
plot(year, sweden$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'Sweden')
plot(year, us$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'United States')
plot(year, canada$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'Canada')
plot(year, denmark$ca, type = 'l', xlab = 'year', ylab = 'ca', main = 'Denmark')
dev.off()




### CA first difference
png('figures/d_ca_countries1.png')
par(mfrow = c(3,2))
plot(year, uk$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'United Kingdom')
plot(year, thailand$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'Thailand')
plot(year, sweden$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'Sweden')
plot(year, us$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'United States')
plot(year, canada$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'Canada')
plot(year, denmark$d_ca, type = 'l', xlab = 'year', ylab = 'd_ca', main = 'Denmark')
dev.off()



cal_k = function(a){

		r = 0.04
		discount = 1/(1+r)
		h = rbind(c(1,0,0,0))
		part1 = discount * h%*%a
		K = part1 %*% solve(1-discount*a)
		
		return(K)
}



### Thailand

a = rbind(
					c(0.779, -0.069, 0.311,-0.66),
					c(1,0,0,0),
					c(-0.078, -0.13, 0.553, 0.055),
					c(0,0,1,0)
)

k = cal_k(a)
print(k)

z = rbind(
thailand$delta_NO,
thailand$d_no_t.1,
thailand$ca,
thailand$ca_t.1
)
prediction = k %*% z
png('figures/Thailand.png')
plot(year, thailand$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'Thailand', ylim = c(min(prediction, thailand$ca)-100,max(prediction, thailand$ca)+100))
points(year, prediction, type = 'l', lty = 2)
dev.off()


### UK

a = rbind(
					c(0.215, 0.267, -0.069,0.002),
					c(1,0,0,0),
					c(-0.01, -0.102, 1.072, -0.124),
					c(0,0,1,0)
)

k = cal_k(a)
print(k)

z = rbind(
uk$delta_NO,
uk$d_no_t.1,
uk$ca,
uk$ca_t.1
)
prediction = k %*% z
png('figures/United_Kingdom.png')
plot(year, uk$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'United Kingdom', ylim = c(min(prediction)-100,max(prediction) + 100))
points(year, prediction, type = 'l', lty = 2)
dev.off()





###sweden

a = rbind(
					c(0.507, 0.276, 0.097,-0.093),
					c(1,0,0,0),
					c(-0.059, 0.113, 0.963, -0.149),
					c(0,0,1,0)
)

k = cal_k(a)
print(k)

z = rbind(
sweden$delta_NO,
sweden$d_no_t.1,
sweden$ca,
sweden$ca_t.1
)
prediction = k %*% z
png('figures/Sweden.png')
plot(year, sweden$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'Sweden', ylim = c(min(prediction)-100,max(prediction) + 100))
points(year, prediction, type = 'l', lty = 2)
dev.off()




###us
a = rbind(
					c(0.466, 0.284, -0.453,0.37),
					c(1,0,0,0),
					c(-0.124, 0.11, 1.206, -0.224),
					c(0,0,1,0)
)


k = cal_k(a)
print(k)


z = rbind(
us$delta_NO,
us$d_no_t.1,
us$ca,
us$ca_t.1
)


prediction = k %*% z
png('figures/US.png')
plot(year, us$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'United States', ylim = c(min(prediction,us$ca)-100,max(prediction,us$ca) + 100))
points(year, prediction, type = 'l', lty = 2)
dev.off()





###canada
a = rbind(
					c(-0.086, -0.140, -0.341,0.055),
					c(1,0,0,0),
					c(-0.063, 0.076, 1.222, -0.313),
					c(0,0,1,0)
)



k = cal_k(a)
print(k)


z = rbind(
canada$delta_NO,
canada$d_no_t.1,
canada$ca,
canada$ca_t.1
)


prediction = k %*% z
png('figures/canada.png')
plot(year, canada$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'Canada', ylim = c(min(prediction,canada$ca)-100,max(prediction,canada$ca) + 100))
points(year, prediction, type = 'l', lty = 2)
dev.off()




###denmark
a = rbind(
					c(-0.505, -0.02, -0.34,0.403),
					c(1,0,0,0),
					c(0.134, -0.061, 0.786, -0.27),
					c(0,0,1,0)
)



k = cal_k(a)
print(k)


z = rbind(
denmark$delta_NO,
denmark$d_no_t.1,
denmark$ca,
denmark$ca_t.1
)


prediction = k %*% z
png('figures/Denmark.png')
plot(year, denmark$ca, type = 'l', lty = 1, xlab = 'year', ylab = 'ca', main = 'Denmark', ylim = c(min(prediction,denmark$ca)-100,max(prediction,denmark$ca) + 100))
points(year, prediction, type = 'l', lty = 2)
dev.off()




