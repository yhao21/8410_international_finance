library(geometry)



a = rbind(
		c(0.25, 0.17, -0.08, -0.06),
		c(1,0,0,0),
		c(-0.24, 0.36, 1.09, -0.38),
		c(0,0,1,0)
)
print(a)


r = 0.04
discount = 1/(1+r)
h = rbind(c(1,0,0,0))


part1 = -discount * h%*%a
K = part1 %*% solve(1-discount*a)
print(K)


