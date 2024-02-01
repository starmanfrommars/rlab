rm(list=ls())
var1<-123
typeof(var1)
var2<-123L
typeof(var2)
var3<-"apple"
typeof(var3)
var4<-TRUE
var5<-FALSE
var6<-T
var7<-F
typeof(var4)
typeof(var5)
typeof(var6)
typeof(var7)
var8<-2+3i
typeof(var8)
"**************************"
"Arithmetic operations"
a<-1
b<-3
c<-1
sum<-a+b
difference<-b-a
difference<-a-b
e<-2^3
e2<-2**3
x<-10/3
10%/%3
x1<-2L
x2<-2.5
x<-x1+x2

"**************************"
"Logical operations"
status1<-a>=b
status2<-a<=b
status3<-!FALSE
status4<-!0
a=6
b=7
a==b
exp(2)

"**************************"
"Arithmetic operations on vectors"
vec <-seq(from=1, to=9, by=2)
vec1<-5
vec2<-6:10
sum_vec<-vec1+vec2
dif_vec<-vec1-vec2
prod_vec<-vec1*vec2

"**************************"
"Alegebraic operations on vectors - act element wise"
x<-c(1,2,3)
y<-c(4,5,6)
x*y
x+y
y^x

"**************************"
"recycling of values"
c(1,2,3,4)+c(1,2)
(1:10)^c(1,2)
2+c(1,2,3)
(1:10)^2
v<-c(3,1,TRUE,2+3i)
t<-c(4,1,FALSE,2+3i)
print(v&t)

"**************************"
"Find all integers between 1 and 20 divisibke by 4"
x<-seq(from=1, to=20, by=1)
(y<-x[x%%4==0])


"**************************"
"concatenate function"
a<- c(1,2,3,4,5)
b<-c(6,7,8,9,10)
d<- a+b

"**************************"
"Matrix by binding vector as rows using rowbind()"
a<- c(1,2,3,4,5)
b<- c(6,7,8,9,10)
rb<-rbind(a,b)
rb

"**************************"
"Matrix by binding vector as rows using rowbind()"
cb<-cbind(a,b)
cb

"**************************"
"Access vector elements"
a[1]
a[1:3]

"**************************"
"Create matrix , access value"
A<-matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
B<-matrix(2:7, nrow=2, ncol=3, byrow=TRUE)
A
A[1:3]<-0
a[2:3]

"**************************"
"create array from vector or matrix"
arr_a = as.array(0)
arr_a
d<- c(1,2,"apple",5,6)
list_d <- as.list(d)
list_d
arr_a[1]
arr_a[1:3]

list_d[1]
list_d [3]        
list_d[5]