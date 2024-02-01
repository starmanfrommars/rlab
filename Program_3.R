rm(list=ls())
A<-matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
B<-matrix(2:10, nrow=3, ncol=3, byrow=TRUE)
print(A)
print(B)

#transpose
AT<- t(A)
AT

#sum
mat_sum <- A+B
mat_sum

#difference
mat_diff<- A-B
mat_diff
mat_diff1<- B-A
mat_diff1

#vector product
mat_prod<- A*B
mat_prod

#matrix product
mat_prod1<- A%*%B
mat_prod1
