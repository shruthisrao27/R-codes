print("Hello!")
print("This is basics of RStudio !")
#this is a basic operation
5+10
10-4
3*8
12/4
5^2
(5+8)*2
((3+2)*5+(10+5)/3)^3
7/0
# creating variables
x <- 5
y <-10
x + y
x - y
x * y
x / y
y / x
y/x
 //store the result in new variable
z <- x+y 
z
w <- x*y
w
##get class and type of variable
class(x)
typeof(x)
## get string variable
v <- "Tom"
v
class(v)
typeof(v)

t <- "56"
t
class(t)
typeof(t)
## logical variables
m <- TRUE
n <- FALSE
class(m)
typeof(m)
# perform mathematical opeartion with logical operators
m+n
m-n
m+m
m*n
m/n
n/m
## variable names are case sensitive
X <- 100
Print("Hello!!")
##to get list of variables
ls()
## remove variable
rm(x)
rm(y,z)
## remove all the variables
rm(list=ls())
# creating vectors with character c() function
x <- c(10,20,30,40,50)// components
x
# get class and type of vectors
class(x)
typeof(x)
# creating a character vector
y <- c("a","b","c")
y
class(y)
typeof(y)
## create a vector of logical values
z <- c(TRUE,FALSE,FALSE,TRUE)
z
class(z)
typeof(z)
## if we create a vector with components of different types..
n <-c(1,2,"a","b",TRUE,FALSE)
class(n)
typeof(n)
n
# get vector length
length(x)
#we can add values to existing vectors
x <- c(x,100)
x
## if we nest two or more c() function
#result is one vector only
w <- c(c(1,2,3),25)
w
s<-c(c(2,4,6),c(10,12,14))
s
// creating vectors with colon operator
 helps us to create sequence of integers.
 x <- 1:5
x 
to get class and type
class(x)
typeof(x)
## lets create another vector with the same values using c() function
y <- c(1,2,3,4,5)
y
typeof(y)
##we can create sequence in the descending order
z <- 10:1
z
## we can also use variables with the colon operator
i <- 3
j <- 7
k <-i:j
k
typeof(k)
## combine the colon operator with c() function
w <- c(3:9,70)
w
typeof(w)

z<-c(1:10,20:-5)
z
typeof(z)
## creating vectors  with rep() function
create vectors with replicated values
 x <- rep(5,3)
 x
##we can do with strings and logical values
 y <- rep("ab",6)
 y 
 ## we can combine rep() with c()-to replicate an entire vector
 z<-rep(c(1,2,3),5)
 z
 ## to replicate the vector element-wise
 ## we use the each segment
 w<- rep(c(1,2,3),each=5)
 w
## also combine rep() with colon operator
 q <-rep(2:5,3)
 q
 ## to repeat the sequence element-wise we use each
 s <- rep(2:5,each=3)
 s
 #other function that replicates values
 ##the function numeric() will get us vector of zeros
 t<-numeric(4)
 t
 ##the function character() vector of empty strings
 k<-character(4)
 k
 ## the function logical() vector of false values
 u<-logical(4)
 u
 
 # create vectors with the seq() function
 
 the seq() creates the sequence of real numbers
 x<-seq(from=1,to=10,by=0.5)
x 
##if we enter the arguments in the order(start,stop,step)
y<-seq(1,10,0.5)
y
## other example
z<-seq(0,20,2)
z
# one more example
w<-seq(1,10,2)
w
##reversed stop
t<-seq(11,1,-2)
t
#create a sequence of 10 numbers between 1 and 5
q<-seq(1,5,length=10)
q
## step is dividing the difference b/w stop and start values to number of components minus one
(5-1)/9=0.44444
### create a sequence of 100 numbers from -3 to 25
x<-seq(-3,25,length=100)
x
step = (25+3)/99
## we can combine seq() function ith c() and rep()
y<-c(seq(1,10,length=5),30,40)
y
z<-rep(seq(1,3,0.5),3)
z
w<-rep(seq(1,3,0.5),each=3)
w
## create vectors of random numbers
n<-sample(100,12)
n
##the population can be any vector
h<-100:300
n<-sample(h,10)
n

n<-sample(30,15,replace=TRUE)
n
## if sample is greater than population 
replace TRUE
# generate 10 random numbers from 1 to 10
m<-sample(10,50,replace=TRUE)
m
### if no replacement
m<-sample(10,50)
# generating vectos of random numbers with few statistical distribution
using normal distribution continuous
x<-rnorm(100,10,5)
x
x<-rnorm(100)
x
generate a vector of uniform random vector
y<-runif(100,1,5)
y //default 0-1
### generate a vector of exponential 
x<-rexp(100,1/50)
x
##create empty vectors
x<-c()
x
typeof(x)
length(x)
###using null values
y<-NULL
y
typeof(y)
###using an empty vector 
z<-vector()
z
typeof(z)
### to add values to empty vectors
x<-c(x,1,2)
x
typeof(x)
y<-c(y,1,2)
y
typeof(y)
z<-c(z,1,2)
z
typeof(z)
##indexing vectors using numeric indices
x<-c(10,20,30,40,50,60,70,80,90,100)
x[2]
## access several components
x[c(1,3,8)]
x
## access components in order
x[2:5]
x[5:2]
#combine the methods above
x[c(1:4,7)]
##access the last component
x[length(x)]
##we can put the indices in separate vector
n<-3:5
x[n]
## the negative indices helps us remove the component
# remove one component
x[-2]
#remove several components
x[c(-1,-3,-6)]
#remove components in order
x[-2:-4]
x[-4:-2]
## combine the above methods
x[c(-1:-5,-9)]
##remove the last component
x[-length(x)]
#we cannot mix negative and positive indics
x[c(3,-7)]
#only zeros can br mixed with -ve values
x[c(0,-7)]
#this has same effect 
x[-7]
#we can add the components to an existing vector
using indics
x<-c(7,8,9,10)
x[5]<-11
x
x[2]<-100
x
#we cannot this if it vector was pre defined
p[1]<-3
so, first define vector
p<-c()
add components
p[1]<-3
p[2]<-7
p
#insert an component into existing vector
x<-c(9,10,11,12)
to insert 50 b/w 11 and 12
x<-c(x[1:3],50,x[4])
x
#indexing vectors using logical indices
x<-c(1,2,3,4)
we need to access the second and third components 
# create a logical vector
i<-c(FALSE,TRUE,TRUE,FALSE)
x[i]
# directly
x[c(FALSE,TRUE,TRUE,FALSE)]
#NAMING VECTOR COMPONENTS
salary<-c(4000,2700,3200)
#to add the employee names
names(salary)<-c("john","andrew","mary")
salary
salary["john"]
#to remove names 
names(salary)<-NULL
salary
#FILTERING VECTORS
x<-c(10,20,30,40,50,60,70,80,90,100)
y<-x[x>45]
y
y<-x[x<72]
y
y<-x[x==30]
y
y<-x[x!=30]
y
y<-x[x>27&x<83]
y
y<-x[x<39|x>71]
y
y<-x[x<60|x>20]
y
y<-x[x>20&x!=80]
y
y<-x[x>20|x!=80]
y
which returns indics that meets condition
which(x==40)
which(x<54)
which(x>43)

i<-which(x>43)
i
to check whether a avalue can be found in the vector or nottem
40 %in% x
86 %in% x
# all() and any()
all to check whether all the components in a vector have meet a certain conditionCall
x<-c(1,3,5,7,9,11,13,15)
all(x>0)
all(x<50)
all(x>8)
all(x>0&x<10)
all(x>10)
all(x>0&x<35)
all(x>0|x<7)
all(x>4|x<7)
all(x>4|x<2)
any() is a function checks whether any components in a avector meets up certain condition 
x
any(x>4)
any(x<0)
any(x==11)
any(x==4)
any(x<10&x>3)
any(x<4|x>9)
any(x<4&x>9)
any(x<0|x>100)
####SUM AND PRODUCT OF VECTOR COMPONENTS
X<-C(2,4,6,15,17,19)
x<-c(2,4,6,15,17,19)
sum(x)
y<-sum(x)
y
prod(x)
cumsum(x) //cumulative sum()
cumprod(x)
mean(x)
median(x)
var(x)
sd(x)
summary(x)
//vectorized operations
applied to all components simultaneiously
saves us from writing loops result is a vector
x<-c(1,2,3,4,5)
y<-x+10
y
y<-x*3
y
// computing the modulo values of  components 
y<-x%%2
y
y<-x^2
y
exp(x)
sqrt(x)
x^(1/2)
x^(1/3)
log(x)
sin(x)
cos(x)
abs(x)
z<-c(1.3,3.7,0.8)
round(z)
floor(z)
ceiling(z)
w<-c(3.954,7.200,9.023)
signif(w,1) //round to specified number of signficient digits
signif(w,3)
signif(w,2)
factorial(x)
## missing values in the vectors
sal <- c(3500,1800,2400,NA,2900)
mean(sal)
sal2<-na.omit(sal)//missing value first
sal2
mean(sal2)
// a simple and direct way
mean(sal,na.rm=TRUE)
length(sal)
y<-is.na(sal)
y
// sorting of vectors
x<-c(6,8,3,11,5,10,2,17)
sort(x)
x
order(x)
y<-sort(x)
y
y<-sort(x,decreasing=TRUE)
y
w<-c("z","a","n","d")
sort(w)
sort(w,decreasing=TRUE)
q<-c(TRUE,FALSE,TRUE,FALSE)
sort(q)
sort(q,decreasing=TRUE)
#minima and maxima
x<-c(4,1,7,5,12,6)
min(x)
max(x)
which.min(x)
which.max(x)
#pmin() and pmax() to find in the given pairs of vector
x
y<-c(2,9,7,6,10,14)
y
x
pmin(x,y)
pmax(x,y)
###if else 
x<-c(6,10,9,5,20,7,16)
y<-ifelse(x%%2==0 ,x/2,x)
y
x<-c(2,6,15,10,20,14)
y<-ifelse(x<=12,x*5,x*3)
y
x<-c(25,-36,100,0,-1,49,4,-68)
y<-ifelse(x>=0,sqrt(x),sqrt(-x))
y
# toremove the above warning
y<-sqrt(ifelse(x>=0,x,-x))
y
x<-c(15,6,10,30,4)
y<-ifelse(x^2>100,1,0)
y
#ADDING AND MULTIPLYING VECTORS
x<-c(2,4,6,8)
y<-c(10,20,30,40)
z<-x+y
z
t<-x-y
t
s<-x*y
s
v<-x/y
v
w<-y/x
w
x%%y
y%%x
##if the vectors are of different lengths
  x<-c(1,2,3,4)
  y<-c(9,10)
  x+y
x*y
y%%x
#testing vector equality
#the comparisons between vector are vectorized operation
x<-c(7,10,3,9,6)
y<-c(2,14,5,15,6)
x>y
y>x
y==x
x<-c(2,4,6)
y<-c(2,4,6)
all(y>x)
x<-c(7,8,9)
y<-c(2,4,6)
all(y>x)
all(x>y)
x<-c(4,5,6,8)
y<-c(2,7,10,8)
any(x>y)
any(y>x)
any(x==y)
x<-c(1,2,3)
y<-c(1,2,3)
z<-c(1,2,5)
identical(x,y)
identical(x,z)
##all.equal() if vectors are identical returns TRUE
## if not returns mean difference (5-3)/3
all.equal(x,y)
all.equal(x,z) 
x<-c(4,5,6)
y<-4:6
identical(x,y)
## these vectors are not identical because they are of different types
typeof(x)
typeof(y)
all.equal(x,y)
//evaluates the "near identity"
#vector correlation
use Pearson correlation coefficients
sal<-c(80,66,42,40,75,82,54,44,85,83)
edu<-c(15,18,12,12,16,17,13,12,17,16)
cor.test(sal,edu)
### creating matrices with the matrix() function
A matrix is a collection of data elements of the same type arranged in two dimensional rectangle
m<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
m
##by default ,any matrix is created as column-wise
to change we  set byrow options
m<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
m
### it is not neccesary to specify both number of rows and column
we can only indicate one of them 
m<-matrix(c(1,2,3,4,5,6),nrow=2)
m
m<-matrix(c(1,2,3,4,5,6),ncol=3)
m
m2<-matrix(c(1,2,3,4,5,6,7),nrow=2)
### get class and type
class(m)
dim(m)
typeof(m)
### get the matrix dimensions
dim(m)
nrow(m)
ncol(m)
##other matrix examples
m<-matrix(1:12,nrow=4,byrow=TRUE)
m
typeof(m)
m<-matrix(rep(8,9),nrow=4,byrow=TRUE)
m
typeof(m)
m<-matrix(rep(8,9),nrow=3)
m
typeof(m)
m<-matrix(seq(1,5,length=20),nrow=5,byrow=TRUE)
m
m<-matrix(rnorm(20),nrow=5,byrow=TRUE)
m
## creating matrices with rbind() and cbind()
rbind() and cbind() allow us to bind vectors in order to create matrix
x<-c(1,2,3,4)
y<-c(10,11,12,13)
z<-c(20,30,40,50)
m<-rbind(x,y,z)
m
class(m)
typeof(m)
m<-rbind(y,z,x)
m
m<-rbind(y,x,z)
m
m<-rbind(x,y,x,z)
m
m<-rbind(c(1,2,3),c(7,8,9),c(21,22,23))
## the vectors will be columns
m<-cbind(x,y,z)
m
class(m)
##naming matrices rows and columns
we can name rows and columns : dimnames
m<-matrix(c(1,2,3,4,5,6),nrow=2,dimnames=list(c("row1","row2"),c("col1","col2","col3")))
m
### we can name rows and columns at any time using rownames() colnames()
m<-matrix(c(1,2,3,4,5,6),nrow=2)
m
rownames(m)<-c("row1","row2")
m
colnames(m)<-c("col1","col2","col3")
m
### to remove names
rownames(m)<-NULL
m
colnames(m)<-NULL
m
####indexing matrices
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
m[2,3]
m[4,1]
c(m[2,2],m[4,3])
m[2,]
x<-m[2,]
x
m[,3]
m[2,2:4]
m[c(1,4),3]
m
m[c(2,4),c(2,4)]
m[2:4,3:4]
m
c(m[1:2,1:2],m[3:4,3:4])
m
### access  the fifth element in the column order
m[5]
m[c(5,7)]
m[5:7]
m
##to remove elements use negative indics
m[2,-3]
m[4,c(-2,-4)]
m[2:4,-1]
## filtering matrices
accessing the elements that meet a certain conditionCall()
this condition must be put in between square brackets
i<-sample(100,16,replace=TRUE)
m<-matrix(i,nrow=4,byrow=TRUE)
m
m[m>50]
m[m<70]
m[m>70|m<20]
m[m<70&m>30]
m[m==0]
m[m==99]
m[m==0|m<30]
m[m==99|m<30]
m
which(m==0)
which(m==14)
m
which(m>50)
### editing elements in the matrices
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
m[3,4]<-100
m
m[7]<-100
m
m[1,2:4]<-100
m
m[2,]<-0
m
m[1,2:4]<-c(31,32,33)
m
m[,3]<-51:54
m
m[c(7,9)]<-c(1000,2000)
m
###adding and deleting rows and column from a matrix
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
## to add rows use rbind() function
m<-rbind(m,c(50,60,70,80))
m
x<-c(8,10,12,14)
m<-rbind(m,x)
m
### the new row will have the vector name we can remove the name
rownames(m)<-NULL
m
### we can use rbind() to bind two or more matrices have same number of columns
m2<-matrix(21:28,nrow=2,byrow=TRUE)
m2
m<-rbind(m,m2)
m
## to add columns of matrix we use the cbind() function
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
m<-cbind(m,c(100,101,102,103))
m
### we can also use cbind() to bind two or more matrices same as number of rows
m2<-matrix(51:58,nrow=4,byrow=TRUE)
m2
m<-cbind(m,m2)
m
### to remove rows and columns we simply use negative indices
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
### to remove the second row( and create a new matrix)
m1<-m[-2,]
m1
### remove the first column
m1<-m[,-1]
m1
### remove the first and third row
m1<-m[c(-1,-3),]
m1
### remove the first and third column
m1<-m[,c(-1,-3)]
m1
m1<-m[-1:-3,]
m1
### minima and maxima
### create a 4x5 matrix of 20 random numbers
t<-sample(100,20)
m<-matrix(i,nrow=4,byrow=TRUE)
m
### get the minima and maxima
min(m)
max(m)
### get the minima in the third row
min(m[3,])
### get the maxima value in the fourth column
max(m[,4])
### to get the indices of minima and maxima
m
which.min(m)
which.max(m)
### the index of the minima value in the third form
which.min(m[3,])
which.max(m[,3])
### get the maxima for row 2 and row3
pmax(m[2,],m[3,])
pmin(m[2,],m[3,])
#### applying functions to matrix
perform operationson the matrix rows and columns use apply() function
# create a 4x4 matrix 
m<-matrix(1:16,nrow=4,byrow=TRUE)
m
### compute the sum of the elements on each row and column
apply(m,1,sum)
apply(m,2,sum)
## compute the product of the elements on each row and column
apply(m,1,prod)
apply(m,2,prod)
### compute the mean of the elements on each row and column
apply(m,1,mean)
apply(m,2,mean)
## compute sd 
apply(m,1,sd)
apply(m,2,sd)
## cumulative sum
apply(m,1,cumsum)
## cumulative sums are computed by row as column-wise(default in r)
to build same using row-wise use matrix() function
m1<-matrix(apply(m,1,cumsum),nrow=4,byrow=TRUE)
m1
### compute the cumlative sum for each column
m
apply(m,2,cumsum)
## the cumulative sums are computed by column the matrix is column-wise
m
# compute sqrt 
apply(m,1,sqrt)
#compute natural log
apply(m,1,log)
# COMPUTE THE ANTILO0G
apply(m,1,exp)
## to get row-wise matrix using sqrt
m
m1<-matrix(apply(m,1,sqrt),nrow=4,byrow=TRUE)
m1
### to get a row-wise matrix using log
m
m1<-matrix(apply(m,1,log),nrow=4,byrow=TRUE)
m1
##same happens when we use a custom function applied by the row
f<-function(x)(2*x+3)
m
apply(m,1,f)
### to get row-wise matrix
m1<-matrix(apply(m,1,f),nrow=4,byrow=TRUE)
m1
### in summary
when we compute the cumulative sum cumulative product
square root logarithm exponential sin cos by column
no problem arises
however by row, the result matrix is transposed to get it row-wise we have to use matrix() function
### the sweep() is useful when we have to  perform different operations on various matrix rows and columns
### create the matrix
m<-matrix(1:12,nrow=3,byrow=TRUE)
m
// sweep() :
  1) data source ( our matrix)
  2) the dimension
  3) vector of values
  4) a binary operator : '+','-','*','/'

## add 10,20,30 to each row respectively
sweep(m,1,c(10,20,30),"+")
## subtract 10,20,30 from each row respectively
sweep(m,1,c(10,20,30),"-")
sweep(m,1,c(10,20,30),"*")
sweep(m,1,c(10,20,30),"/")
## add 10 20 30 and 40 to each column respectively
sweep(m,2,c(10,20,30,40),"+")
sweep(m,2,c(10,20,30,40),"-")
sweep(m,2,c(10,20,30,40),"*")
sweep(m,2,c(10,20,30,40),"/")
### adding and multiplying matrix
## can add or multiply two matrix of same dimensions elemnet wise
## create two 3x3 matrix
m1<-matrix(1:9,nrow=3,byrow=TRUE)
m2<-matrix(101:109,nrow=3,byrow=TRUE)
m<-m1+m2
m
m<-m1-m2
m
## to perform multiplication %*%
m1<-matrix(1:15,nrow=3,byrow=TRUE)
m1
m2<-matrix(1:20,nrow=5,byrow=TRUE)
m2
m<-m1%*%m2
m
###other matrix operations
## to transpose of a matrix we use the t() function
m<-matrix(1:20,nrow=5,byrow=TRUE)
m
t(m)
### to compute the determinant of a quadratic matrix we use det() funvtion
m<-matrix(c(2,4,8,12,5,7,9,15,10),nrow=3,byrow=TRUE)
m
det(m)
## to compute the inverse and solve()
m1<-solve(m)
m1
m%*%m1
### to extract the elements on the main disposal of a quadratic matrix we use diag()
m
x<-diag(m)
x
class(x)
## we can apply diag() function on vector as well
x<-c(10,12,14,16,18)
diag(x)
## use diag() function to create an identify matrix
diag(rep(1,5))
### creating multidimensional arrays
a multidimensional array stores several 2d  have same dimension
market<-matrix(c(22,44,66,9,11,5),nrow=3)
rownames(market)<-c("brand1","brand2","brand3")
colnames(market)<-c("code","price")
market
## create another matrix that contain certain brands code and prices
in the second supermarket
market2<-matrix(c(55,77,99,10,1,20),nrow=3)
rownames(market2)<-c("brand1","brand2","brand3")
colnames(market2)<-c("code","price")
market2
### create an array using array() function
1) data sources
2) dimensions
3) order
4)each matrix has3 rows and 2 columns
and the array has 2 layers
markets<-array(data=c(market,market2),dim=c(3,2,2))
markets
### if we dont specify the dimension result will be a vector not an array
market2<-array(data=c(market,market2))
market2
## print the array
markets
### specify the dimension names
markets<-array(data=c(market,market2),dim=c(3,2,2),dimnames=list(c("brand1","brand2","brand3"),c("code","price"),c("smark1","smark2")))
markets
dim(markets)
dimnames(markets)
### indexing multidimensional arrays
three indics:
  the first index : rows in the matrices
  the second index: columns in the matrices
  the third index: layers
markets
### access the first layer
markets[,,1]
 markets[,,2]
 markets[,2,1]
 markets[,1,2]
 markets[3,2,1]
 markets[3,2,2]
 markets[1,,1]
 markets[3,,2]
 markets[2,1,]
 markets[3,,]
markets[,1,]
### create lists with the list() function
contains objects of different types
employees<-list(names=c("mark","tom","laura","sandra"),
                age=c(49,28,35,25),
                gender=c("m","m","f","f"),
                salary=c(75000,62000,55000,46000),
                manager=c(TRUE,FALSE,FALSE,FALSE))
employees
employee2<-list(c("mark","tom","laura","sandra"),c(49,28,35,25),c("m","m","f","f"),c(75000,65000,55000,46000),c(TRUE,FALSE,FALSE,FALSE))
employee2
## if there are no names
the objects are referred using indices between double brackets
class(employees)
typeof(employees)
### print the list structure
str(employees)
names(employees)
## the object in the list do not have same length
lunch<-list(Fred=c("omelette","fried potatoes","chicken","icecream"),
            Jack=c("salad","beef stack"),
            Peter=c("salad","lasanga","pancakes"),
            bill=100)
lunch
str(lunch)
## create lists with vector function()
employ<-vector(mode = "list")
class(employ)
## we can add objects to our list
employ[["names"]]<-c("mark","tom","laura","sandra")
employ[["age"]]<-c(49,28,35,25)
employ[["gender"]]<-c("m","m","f","f")
employ[["salary"]]<-c(75000,67000,53000,48000)
employ[["manager"]]<-c(TRUE,FALSE,FALSE,FALSE)
employ
## indexing lists using brackets
employees<-list(names=c("mark","tom","laura","sandra"),
                age=c(49,28,35,25),
                gender=c("m","m","f","f"),
                salary=c(75000,62000,55000,46000),
                manager=c(TRUE,FALSE,FALSE,FALSE))
employees[["names"]]
x<-employees[["names"]]
x
class(x)
typeof(x)
## extract the vector of ages
employees[["age"]]
employees[[1]]
employees[[5]]
### to access an individual element we put its index
between simple brackets
employees[["names"]][3]
employees[[1]][3]
employees[[c(1,3)]]
### other examples
## get tom's salary
employees[["salary"]][2]
employees[[4]][2]
employees[[c(4,2)]]
### get mark tom and laura
employees[["salary"]][c(1,4)]
## to remove all the elements we use negative indices
employees[["salary"]][-2]
employees[["age"]][-1:-3]
##### indexing lists using the object names
employees <- list(names=c("mark","tom","laura","sandra"),
                  age=c(49,28,35,25),
                  gender=c("m","m","f","f"),
                  salary=c(75000,62000,55000,46000),
                  manager=c(TRUE,FALSE,FALSE,FALSE))
employees
### access the vectors of names gender salary
employees$names
employees$gender
employees$salary
## get tom`s salary
employees$salary[2]
## get the tom`s laura`s and sandra`s

employees$salary[2:4]
## to remove the elements
employees$salary[-1]
### create a sub-list with ages and salaries
emp2 <- list(age=employees$age,salary=employees$salary)
class(emp2)
emp2
## editing values in lists
employees <- list(names=c("mark","tom","laura","sandra"),
                  age=c(49,28,35,25),
                  gender=c("m","m","f","f"),
                  salary=c(75000,62000,55000,46000),
                  manager=c(TRUE,FALSE,FALSE,FALSE))
employees
## change tom`s salary from 62000 to 64000

employees[["salary"]][2]<-64000

or 

employees$salary[2]<-68000

### laura has become a manager
employees[["manager"]][3]<-TRUE
employees
###  change all the employees salary
employees[["salary"]]<-c(85000,70000,69000,48000)
## adding and removing list objects
employees <- list(names=c("mark","tom","laura","sandra"),
                  age=c(49,28,35,25),
                  gender=c("m","m","f","f"),
                  salary=c(75000,62000,55000,46000),
                  manager=c(TRUE,FALSE,FALSE,FALSE))
employees
# add the number of the monthly working hours for each employee
employees$hours<-c(200,220,235,215)
employees
# to remove an object we assign the null value
employees$hours <-NULL
employees
## add new employee with the following data:
name:ken
age :58
gender:male
annual salary:43000
manager:no
employees[["names"]][5]<-"ken"
employees[["age"]][5]<-58
employees[["gender"]][5]<-"m"
employees[["salary"]][5]<-43000
employees[["manager"]][5]<-FALSE
employees
### applying functions to lists
to perform operation with list elements we use lapply()
// the function can be used only when the list elements are of same type
carspec<-list(engine=c(1.8,3.2,3.5,1.8,2.8,4.2),
              horse=c(140,225,210,150,200,310),
              weight=c(2639,3517,3850,2998,3562,3902))
carspec
// lapply() function : the list name and the function to apply objects
### compute the average value for each object
lapply(carspec,mean)
## the result is the list wwith the same length as initial list

l<-lapply(carspec,mean)
l
typeof(l)
class(l)
## compute the standard deviation 
lapply(carspec,sd)
### compute the sum and product
lapply(carspec,sum)
lapply(carspec,prod)
## compute the logarithm of each value
lapply(carspec,log)
## apply user-defined function 

f <- function (x)(x^2+3*x)
lapply(carspec,f)

## sapply() is simplified version of lapply()
but returns a vector not a list()

sapply(carspec,mean)
s<-sapply(carspec,mean)
class(s)
typeof(s)
s
names(s)
### the vector has the same length as number of objects in the list
and its components have same names as that list objects

s<-sapply(carspec,mean,simplify=FALSE)
s
class(s)
### what happens if the list objects are not same type
carspec2<-list(make=c("toyata","honda","renault","mazda","volkswagen","bmw"),
               engine=c(1.8,3.2,3.5,1.8,2.8,4.2),
               horse=c(140,225,210,150,200,310),
               weight=c(2639,3517,3850,2998,3561,3902)
               )
## lapply() returns na for make object
returns a error message
lapply(carspec2,mean)
## sapply() function
sapply(carspec2,mean)

## regression analysis output
is actually a list we can use what we learned until now to "read" this output

## vector of the dependent variable
 price<-c(21.5,28.4,42.0,23.9,33.9,62.0,26.9,33.4,39,21.9)
### vectors of predictors
 engine<-c(1.8,3.2,3.5,1.8,2.8,4.2,2.5,2.8,2.8,3.1)
 horse<-c(140,225,210,150,200,310,170,193,195,175)
## fit the regression model
 
 fit <- lm(price~engine+horse)
 typeof(fit)
 names(fit)
## let print a few list object
 ## the regression coefficeints
 fit$coefficients
## the coefficient of variable engine
 fit$coefficients[2]
 ## the intercept
 fit$coefficients[1]
 ## the regression equation
 fit$call
 ### the variables in the model
 fit$model
 ## the predicted values of the response variables
 fit$fitted.values
### the residuals difference
 fit$residuals
### working with factors
 # factors are categorical variables
 they take on limited number of distinct values called levels
 create a factor we use factor() function
 x<-c(4,4,6,5,6,6,6,4,4,5,4,5,4,6,4)
 f<-factor(x)
 f
 y<-c("a","b","c","b","a","c","b","a","a","c")
 ff<-factor(y)
 ff
###  to get the factor levels
 levels(f)
 levels(ff)
 ### we can assign labels to factor values
 x
 f<-factor(x,labels=c("ford","toyata","mercedes"))
 f
 ## to change the level of the option 
 f<-factor(x,levels=c(5,6,4),labels=c("Ford","Toyata","mercedes"))
 x 
 f 
### if factors levels are ordered ,we will use ordered() function
 x<- c(1,1,3,2,2,1,3,3,2,1,1,2,3)
 f<-ordered(x,levels=c(1,2,3),labels=c("elementary","middle","high"))
 f
# even if we change the coding the order stays same
 f<-ordered(x,levels=c(3,2,1),labels=c("elementary","middle","high"))
 f
 ## it is not absolutely necessary toi specify the levels
 f<- ordered(x,labels=c("elementary","middle","high"))
 f
 ###get factor length
 length(f)
 #index a factor
 f[10]
 ## add a new value to a factor
 f[14]<-"elementary"
 f
 ## add a new level to a factor
 # suppose we want to add the doctoral level to factor f
 f<-ordered(x,levels=c(1,2,3,4),labels=c("elementary","middle","high","doctoral"))
f
## we can add the doctoral value
f[14]<-"doctoral"
f
f[15]<-"unknown"
f
# splitting a vector using a factor levels
sal<-c(1000,1800,2500,1750,1900,2700,2100,1100)
categ<-factor(c("w","mm","tm","mm","w","tm","mm","w"))
split(sal,categ)
# this function returns a list
s<-split(sal,categ)
s
class(s)
names(s)
# lets add new filter called gender
gender<-factor(c("male","female","male","male","female","female","male","female"))
## split by category and gender
s<-split(sal,list(categ,gender))
s
## the result is a list again
class(s)

## the tapply() function
applies an operation to a vector values broken by factor level
sal<-c(1000,1800,2500,1750,1900,2700,2100,1100)
categ<-factor(c("w","mm","tm","mm","w","tm","mm","w"))
#compute the mean salary
tapply(sal,categ,mean)
tapply() retruns an array
t<-tapply(sal,categ,mean)
t
class(t)
gender<-factor(c("male","female","male","male","female","female","male","female"))
## compute the mean by both category and gender
t<-tapply(sal,list(categ,gender),mean)
t
class(t)
### the by() function
by() similar to tapply()
it applies operation to a vector values broken down by factor levels
sal<-c(1000,1800,2500,1750,1900,2700,2100,1100)
categ<-factor(c("w","mm","tm","mm","w","tm","mm","w"))
# compute mean salary by category
by(sal,categ,mean)
b<-by(sal,categ,mean)
b
class(b)
typeof(b)
# we can index b as a vector
b[2]
# we can convert b into a list as well
b<-as.list(b)
b
class(b)
## now we can index the object b as a list
b$tm
## creating data frames
data frames are the collections of objects objects must have same length
is a list where all the objects have the same length(
  data.frame() function
   create a vector of same length(10)
  
  x<-1:10
  y<-rnorm(10)
  dt<-data.frame(x,y)
  dt
 View(dt)
## objects in the data frame may also be character or logical type
 z<-c("a","b","c","d","e","f","g","h","i","j")
 w<-c(TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE)
 dt<-data.frame(x,y,z,w,stringsAsFactors = FALSE)
 dt
 View(dt)
 ## the objects(columns) in data frame are also called variables
 the rows are also called as entries or observations
 by default the data frames rows HAVE NO NAMES
 
 dt <- data.frame(x,y,z,w,
                  row.names=c("row1","row2","row3","row4","row5","row6","row7","row8","row9","row10"),
                  stringsAsFactors = FALSE )
                              
 View(dt)                      
 class(dt)             
 typeof(dt)                    
 dim(dt)                     
 nrow(dt)
 ncol(dt)
 str(dt)
 ## loading data frames from the external files
 we can read a file in the table format and create data frame from it.
 ## we can use read.csv() and read.delim()
 
 setwd("C:/datasets")
 bm<-read.csv("bank-marketing.csv",header=TRUE,sep=";",stringsAsFactors=FALSE)
View(bm)

## if the table in the external file does not have a header we set header=false 
if .csv file is organised in columns no need to specify sep
car <- read.csv("carsales.csv",stringsAsFactors=FALSE)
View(car)

## to read a text file we can use read.csv() or read.delim()

cpu<- read.csv("cpu-performance-data.txt",sep=",",header=FALSE,stringsAsFactors=FALSE)
View(cpu)
## alternative
cpu<-read.delim("cpu-performance-data.txt",sep=",",header=FALSE,stringsAsFactors=FALSE)
View(cpu)

## if the source file has no header the program automatically assigns names to the columns 
## we will change these names later on..
##Write a data frame in an external file

this is useful when we have created a data frame and want to save it on the hard disk
# create a data frame
x <- 1:10
y <-rnorm(10)
z<-c("a","b","c","d","e","f","g","h","i","j")
w<-c(TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE)
dt <- data.frame(x,y,z,w,stringsAsFactors=FALSE)
View(dt)
## save the data frame on the hard disk as a .csv file
write.csv(dt,file="example.csv")
## to omit row names

write.csv(dt,file="example2.csv",row.names = FALSE )
## create  .csv file with spaces as separators
write.table(dt,file="example3.csv",row.names=FALSE)
# INDEXING A DATA FRAME AS A LIST
#3 data frames are lists so they can be induced as lists

bm <- read.csv("bank-marketing.csv",header=TRUE,stringsAsFactors=FALSE, sep=";")
View(bm)
## access the second column
bm[[2]]
## access the second column ,row =10
bm[[2]][10]
## get the variable balance
bm[["balance"]]
## get the fourth variable of the variable balance
bm[["balance"]][4]
## other way to get variable balance
bm$balance
## fifth value of the variable balance 
bm$balance[5]
## get the second to seventh value of the variable balance

balance<- bm$balance[2:7]
balance
class(balance)
## indexing a data frame as a  matrix
# get the value in the third row
bm[3,]
# get the values in the sixth column
bm[,6]
# the result of the above is a vector
x <- bm[,6]
class(x)
## if we omit the comma the result will be a data frame
y <- bm[6]
View(y)
class(y)
## get the values in the third row ,fourth column
bm[3,4]
## get the values in the rows one to four
bm[1:4,]
# get the values in the columns one to three
bm[,1:3]
## get the values in the second row columns one to three
bm[2,1:3]
bm[1:4,5:8]
bm[1:4,c(5:8,11)]
#to remove rows and columns we use negative index
bm1 <- bm[-1,]
View(bm1)
## remove the third column
bm1<-bm[,-3]
View(bm1)
## remove the rows one to five
bm1 <- bm[-1:-5,-3:-5]
View(bm1)
### selecting a random sample of rows
# to get the number of rows in our data frame
nrows <- nrow(bm)
nrows
## generate 100 random integers from 1 to nrows , without replacement
i <- sample(nrows,100)
i
bm1<- bm[i,]
View(bm1)
bm2<- bm[-i,]
View(bm2)
###FILTERING DATAFRAMES
# filtering means selecting the rows that meet one or several conditions
the conditions must be between square brackets

#select the rows where the balance is greater than 1000
bm1 <- bm[bm$balance >1000,]
View(bm1)
##selecting the rows where the contact duration is lower than 150
bm1 <- bm[bm$duration<150,]
View(bm1)
bm1<-bm[bm$duration==185,]
View(bm1)
bm1<-bm[bm$education=="tertiary",]
bm1
View(bm1)
## select the rows where the education level is tertiary and balance greater than 2000
bm1<-bm[bm$eduaction=="tertiary" & bm$balance>2000,]
View(bm1)
bm1<-bm[bm$education=="tertiary" & bm$marital=="married",]
View(bm1)
bm1<-bm[bm$education=="tertiary"& bm$marital=="married",c(1:4,6)]
View(bm1)
##editing values in the data frames
bm[2:3]<-"married"
# change the balance for first customer to 1000
bm$balance[1] <- 1000
bm$loan[7]<-"no"
bm$balance[4:6]<-c(400,500,600)
bm$balance
## adding rows and columns to data frames
car <- read.csv("carsales.csv",header=TRUE,stringsAsFactors = FALSE)
View(car)
using rbind() and cbind()
car2 <- rbind(car,c(26.4,3.2,225,3500))
View(car2)
## add a new variable formed by uniform random numbers
x <-runif(nrow(car))
car3<-cbind(car,x)
View(car3)
## we can add several columns at once
z<-runif(nrow(car),1,2)
w<-runif(nrow(car),99,100)
car4<-cbind(car,z,w)
View(car4)
# create a new variable that stores the halved car prices
car$price2 <- car$price /2
# create another variable that stores the ratio price  / weight
car$pw <- car$price /car$weight
## to delete a column
car$pw<- NULL
## Naming Rows and columns in data frames
to rename or name rows and columns we use() rownames() and colnames()
x<-1001:1155
rownames(car) <- x
## we can edit the row names individually 
# change the name of the third row
rownames(car)[3]<-"BMw"
# change the names for rows four five and six
rownames(car)[4:6]<-c("renault","mazda","ford")
# changes the names of the variable weight in curbweight
colnames(car)[4]<-"curbweight"
#### applying functions to data frames
since data frame are both lists and matrices we can use apply() and lapply() function but only if variables are of same type(numeric)
# compute the variable means using apply() function
m<-apply(car,2,mean)
m
class(m)
# compute the variables means using lapply()
ml<-lapply(car,mean)
ml
class(ml)
# if we want to get a vector , use sapply() function
sm<-sapply(car,mean)
sm
class(sm)
# simplify option to false sapply() function return a list
sm2<-sapply(car,mean,simplify=FALSE)
sm2
class(sm2)
##When all the variables are not numeric ? we try to use apply()
apply(bm,2,mean returns NA for all the variables
lapply(bm,mean) returns NA for non numeric variable
sapply(bm,mean)  returns NA for non numeric variables
### sorting the data frames
we use order( ) function
must be put between square brackets 
car2<- car[order(car$price),]
View(car2)
// descending order
car2 <- car[order(-car$price),]
## sort by engine size and horse power ,ascending
car2 <- car[order(car$engine,car$horse),]
## sort by engine size ascending and horsepower descending
car2 <- car[order(car$engine,-car$horse),]
### we can sort by character variables as well
View(bm)
##sort by education first ascending then descending
bm2<- bm[order(bm$education),]
View(bm2)
bm2<-bm[order(bm$education ,decreasing=TRUE),]
bm2<-bm[order(-bm$education),]
##shuffling data frames
# means ordering the entries at random
# create a vector of uniform random numbers
rnd <- runif(nrow(car))
car<-car[order(rnd),]
## merging the data frames
id<-c(101,102,103,104,105)
name<-c("mark","lisa","john","Anna","peter")
salary<-c(62000,75000,48000,42000,56000)
employ <- data.frame(id,name,salary)
employ
h<- c(235,220,247,215,260)
hours<-data.frame(id,h)
hours
## the merging variables is indicated with the by option
dt <- merge(employ,hours,by="id")
dt
## if the merging variables have different names
we must  indicate them using the options x and y

code <- c(104,105,101,103,102)
bplace<-c("boston","new year","chicago","dallas","seattle")
birth<- data.frame(code,bplace)
birth
dt
employ2<-merge(dt,birth,by.x="id",by.y="code")
employ2
by.x - first data frame
by.y - second data frame
## for loops
loops are programming structures that help us repeat command for instructions

loops help us iterate over a vector or a sequence

syntax:
  for(values in sequence)( block of instructions)

loop will repeat the block of instructions for each value in sequence
for(i in 1:10){
  print(i^2)
}
// we can store the square in a vector in a variable
x<-c()
for(i in 1:10){
  x<-c(x,i^2)
}
x
// another way to do same thing
x <- c()
for(i in 1:10){
  x[i]<- i^2
}
x
## create a for loop that squares the component of a vector
x <- seq(1,10,length=20)
x
for(i in x){
  print(i^2)
}
### put the result in the new vector in y
y <- c()
for(i in x){
  y <-c(y,i^2)
}
y
## if you want to use brackets to create the y vector components
y<-c()
ind<-1
for(i in x){
  y[ind]<-i^2
  ind <- ind +1
}
y
# the next statement skips the current iteration of the loop
if a condition is met

x<-c()
for(i in 1:10){
  if(i==4) next
  x<-c(x,i^2)
}
x
## the break statement ends the loop if a condition is met
x<-c()
for(i in 1:10){
  if(i==4) break
  x<-c(x,i^2)
}
x
## while loops
the while loop executes a block of commands
while a condition is satisfied 
(when the condition is not satisfied any longer it stops)

#syntax:
while(condition)[block of instructions]
## create a while loop that takes the square root

i <- 0
x <-c()
while(i<10){
  i<-i+1
  x<-c(x,sqrt(i))
}
x
## if the condition is true the loop will go infinitely
i<-0
while(i<10){
  sqrt(i)
}
## the next statement skips the current iteration of the loop if the conditon is met

i<-0

x<-c()

while(i<10){
 
   i<-i+1
  
  if(i==4) next
  
  x<-c(x,sqrt(i))
}
x
## break

i <- 0

x <- c()

while(i<10) {
  
  i <- i +1
  
  if(i==4) break
  
  x <- c(x,sqrt(i)) 
  }
  
x

### if the condition is true the loop will go on infinitely
i <- 0
while(i<10){
  sqrt(i)
}
## repeat loops
a repeat loop replicates a block of instructions for an indefinite number of time
syntax:
  repeat{ block of instructions}
this loop has no condition
so we have to use break statement to make it stop at given points
it will go infinitely
## it stops when our variable equal to 10
i <-0 
repeat{
  i<-i+1
  print(i*2)
  if(i==10) break
}
without break
i<-0
repeat{
  i<-i+1
  print(i*2)
}
## nested for loops
x<-c(1,2,3)
y<-c(10,20,30,40,50)
## loop below takes each component in x
and the multiples it each component in y 
stores the results in 3x3 matrix row wise .
//empty object
m<-c()
## run the loop
for( i in 1:length(x)){
  rw<-c()
  for(j in 1:length(y)){
    rw<-c(rw,x[i]*y[j])
  }
  m<-rbind(m,rw)
}
m
## next code is a loop through a matrix
## it computes the sum of components squares for each row
and stores the result

m<-matrix(1:12,nrow=3,byrow=TRUE)
m
## initialize the vector of sum of squares
vect_seq<-c()
for(i in 1:nrow(m)){
  sq<-c()
  for(j in 1:ncol(m)){
    sq<-c(sq,m[i,j]^2)
  }
  vect_seq<-c(vect_seq,sum(sq))
}
vect_seq
### conditional statements
executes the set of instructions if a condition is met 

syntax:
  if(condition){instructions to be executed if the condition is met}
else{ instructions to be executed if the condition is met}

x <- 10
if(x>0){ x*5 }
x <- 2
if(x > 0){x*5}

x<-10
if(x>0){x*5} else{x*10}
x<- -7
if(x>0){x*5}else{x*10}

x<-10
y<-7

if(x>0 & y>0){x+y}else{print("stop code")}
x<-10
y<-0
if(x>0 & y>0){x+y}else{print("stop code")}

## check if at least one of the two number is strictly positive
if yes add them
if no print the message "stop code"

x<- 10
y<- -5
if(x>0|y>0){x+y}else{print("stop code")}

x<- 0
y<- -2
if(x>0|y>0){x+y}else{print("stop code")}


x<-10
if(x>=0){
  s<- seq(0,x,length=10)
  sum(s)^2
}else{
  x <- -x
  s<-seq(0,x,length=10)
  sum(s)^2
}
## nested conditional statements
x <- 30
if(x <-100){
  if(x<-50){
    print("your number is lower than or equal to 50")
  }
  else{
    print("your number is between 50 and 100")
  }
}else{
  print("your number is  greater than 100")
}
## loops and conditional statements
x <- c(8,10,15,20,23,26,31)
ifelse(x%%2==0,x/2,x)
for(i in x){
  if(i%%2==0){print(i/2)}else{
    print(i)
  }
}
## loop through a matrix
m<- matrix(sample(1000,9),nrow=3)
View(m)

even<-c()
odd<-c()
for(i in 1:nrow(m)){
  for(j in 1:ncol(m)){
    if(m[i,j]%%2==0){even <-c(even,m[i,j])}else{
      odd<-c(odd,m[i,j])
    }
  }
}
even 
odd
## user defined functions
a function is a sequence of instructions that the programmer will likely use frequently
can be viewed as a sub-program
syntax:
  function(agruments){ block of instructions}
f<-function(x){
  x^2+3*x+5
}
f(1)
f(-5)
f(1:10)
class(f)
f<-function(x,y){
  if(y!=1){x^2/(y-1)}
}
f(10,11)
f(3,1)
# the same function, a bit more developed
f<-function(x,y){
  if(y!=1){x^2/(y-1)}else{
    print("the y value must be different 1")
  }
}
# function that computes area of rectangle
area<-function(width,height){
  width*height
}
area(10,4)
area2<-function(width,height=4){
  width*height
}
area2(10)
# to get function arguments 
formals(area)
# to get block of statements 
body(area)
## the return() command
in default a function returns the last computed value
syntax:
  return(expression)
area<- function(width,height){
  a <- width*height
}
area(5,3)
a // variable a is local to the function it cannot be found in the global environment
area<-function(width,height){
  a <- width* height
  return(a)
}
area(5,3)
#we can make the function return other values two

area <- function(width,height){
  a <- width * height
  return (list(a,width))
}
area(5,3)

# if we want to return more than one value

area <- function(width,height){
  a <<- width * height
  return (list(a,width))
}
area(5,3)
a
1. create a function that loops in two vectors multiplies eac component of first with second and create matrix of products
f <- function(x,y){
  m<-c()
   for(i in 1:length(x)){
     rw <- c()
     for( j in 1:length(y)){
       rw <- c(rw,x[i]*y[j])
     }
     m <- rbind(m,rw)
   }
  return(m)
}
f(c(1,2,3),c(10,20,30))
2. create a function that loops through a matrix computes the sum of component squares for  each row and stores the result in vector
f <- function(m) {
  vect_seq <- c()
  for(i in 1:nrow(m)){
     sq <- c()
     for(j in 1:ncol(m)){
       sq<-c(sq,m[i,j]^2)
     }
     vect_seq <- c(vect_seq,sum(sq))
  }
  return(vect_seq)
}
mat <- matrix(1:9,nrow=3,byrow=TRUE)
f(mat)
## checking whether positive integer is a perfect square
if its square root is an integer function will check whether number is positive

isperf <- function(x){
  if(x<0){
    print("it is negative number")
  } else{
    if(round(x)!=x){
      print("it si not integer")
    }else{
      if(round(sqrt(x))==sqrt(x)){
        print("it is perfect square!")
        return(sqrt(x))
      }else{
        print("not perfect square")
      }
    }
  }
}
isperf(64)
isperf(-5)
isperf(3.5)
isperf(42)
## solving a quadratic equation
qd <- function(a,b,c){
  delta <- b^2-4*a*c
  if(delta < 0){
    print("does not have real solutions")
    return(delta)
  }else{
    if(delta==0){
      x1<-(-b)/(2*a)
      print("the equation has one real solution")
      return(list(delta,x1))
    }else{
      x1 <- (-b+sqrt(delta))/(2*a)
      x2 <- (-b-sqrt(delta))/(2*a)
      print("has 2 real solutions")
      return(list(delta,x1,x2))
    }
  }
}
qd(2,10,8)
qd(-1,-4,-4)
qd(1,1,1)
# creating binary operations using functions
is a operation that involves 2 terms
# create a binary operation multiplies square  of two numbers
"%a2b2%" <- function(a,b){a^2*b^2}
2 %a2b2% 3
## use the same operation with two vectors
c(1,2) %a2b2% c(3,4)
## use 2 matrices
m1 <- matrix(1:4,nrow=2,byrow=TRUE)
m2 <- matrix(7:10,nrow=2,byrow=TRUE)
m1
m2
m1 %a2b2% m2
### to remove last two components
## binary operation that computes the logarithm of sum and inverse of two numbers

"%logab%" <- function(a,b){ log(1/a+1/b)}
0.5 %logab% 0.1
0.5 %logab% 0
0.5 %logab% -0.5
## strings double quotes or single quotes more than one time
x<-"hello 'my' friends"
x
y <- 'hello "my" friends'
y
nchar(x)
class(x)
typeof(x)
# create sequence
letters
letters[1]
letters[1:5]
letters[c(1,5,14)]
# create empty strings
# create an empty string
x <- ""
x
nchar(x)
y<-character(2)
y
length(y)
nchar(y)
# create an empty character vector
z <- character(0)
z
length(z)
nchar(z)
## find the character
x<- "the weater is fine"
is.character(x)
## convert a numeric vector in a character vector
x <-c(2,3,4)
typeof(x)
x <- as.character(x)
x
typeof(x)
is.character(x)
## printing strings
print("the weather is fine")
## to remove the quotes
print("the weather is fine",quote=FALSE)
##to print without quotes
noquote("the weather is fine")
# format () function is used to print the strings of numbers
format(3.82345556,digits=3)
# nsmall option - minimum number of decimal places
format(5.8,nsmall=4)
## format() converts number in strings
x <- 5.45839
typeof(x)
y <- format(x,digits=3)
y
typeof(y)
# sprintf() more advanced formatting options
syntax: sprintf(format,sring) %
sprintf("%f",0.723445667)
sprintf("%.3f",0.73738899)
sprintf("%.f",0.23456666)
sprintf("%+f",0.723444559)
sprintf("%+.3f",0.725896956)
sprintf("%e",82.235691)
sprintf("%E",82.235691)
sprintf("%g",82.235691)
sprintf("%.4g",82.235691)
### %s prints the desired number of characters in a string
sprintf("%.4s","philadelpia")
sprintf("%d",23755) // to print integers
## if we want print " this book costs 12.8 dollars"
sprintf("this book costs %.1f dollars",12.82)
a<- 7
b <- 3
x <- sprintf("the sum of numbers %d and %d is %d",a,b,a+b)
x
## concatenating strings
x <- "the weather"
y <- "is fine"
z <- c(x,y)
z
z<-paste(x,y)
z
# the default is separator
z <- paste(x,y,sep=" ")
z
z <- paste(x,y,sep="")
z
z <- paste(x,y,sep="-")
z
paste() can be used to concatenate character vectors as well
x <- c("a","b","c","d")
y <- c(1,2,3,4)
w<- paste(x,y)
w
w<- paste(x,y,sep="--")
w
# to put , use collapse()
w <- paste(x,y,sep="--",collapse=",")
w
w <- paste(x,y,sep="--",collapse=", ")
w
# another example of collapse
x <- c("the weather ","we go to")
y <- c("this fine","take a walk")
z <- paste(x,y,collapse=" and ")
z
paste0() is version of plate that uses no separator by default
paste0("port","land")
paste0("port","land",sep="")
# cat() is space
cat("the weather","is fine")
cat("the weather","is fine",sep="_")
# string manipulation
x <- "mark and jenny went to new york"
tolower(x)
toupper(x)
casefold(x) //converts all to lower case
casefold(x,upper=TRUE)
# chartr() helps us to change characters in the string
x <- "Mary haso cat"
# to change o into a
chartr("o","a",x)

%% chartr() change all the specified  characters
  
  x <- "B*rry h*s * $ed t$uck"

chartr("*$","ar",x)
# how to extract substring()
x<- "philadephia"
substr(x,5,9)
substr(x,10,5)
## substr() 
x <- c("philadephia","chicago","Seattle")
substr(x,2,2)<-"$"
x
substr(x,2,4)<-"$$$"
x
substr(x,2,2)<-c("$","*","&")
x
substr(x,2,4) <- c("$^*","*&^","$#@")
x
##  strsplit() function
x <- "1589-3567-8900-2079"
strsplit(x,split="-")
x
strsplit("philadephia",split="d")
strsplit("New Year",split=" ")
strsplit("betroit",split="")
# function to find patterns in the string
x <-c("philadephia","austin")
## grep() returns index of component
grep(pattern = "del",x)
grep(pattern="stin",x)
grep(pattern ="w",x)
grep(pattern="a",x)
## to ignore the case
grep(pattern="a",x,ignore.case=TRUE)
# to get value
grep(pattern="del",x,value=TRUE)
grep(pattern="stin",x,value=TRUE)
## grepl() returns logical values
grepl(pattern="del",x)
grepl(pattern="stin",x)
grepl(pattern="w",x)
grepl(pattern="a",x)
grepl(pattern="a",x,ignore.case=TRUE)
## regexpr() return the first position where pattern can be found
regexpr("hi1",x)
regexpr("stin",x)
regexpr("a",x)
regexpr("w",x)
regexpr("a",x,ignore.case=TRUE)
## GREGEXP() does the same thing as regexpr()
only it returns a more complex list
gregexpr("hil",4)
gregexpr("stin",x)
gregexpr("w",x)
gregexpr("a",x,ignore.case=TRUE)
## SIMILAR FUNCTION regexec()
regexec("hil",x)
regexec("stin",x)
regexec("a",x,ignore.case=TRUE)
# functions to replace patterns in the string
sub() and gsub()

sub() replaces the first occurence of the pattern in each component
x<-c("Massachussets","Russel")
sub("ss","dd",x)
sub("abc","xyz",x)
# gsub() replaces all the occurences of the pattern in the each  component
gsub("ss","dd",x)
## regular expressions
a regular expressions is a sequence of characters used to define a pattern these expressions are used in the fucntions
that find or replace patterns in the strings
grep() grepl() regexpr() regexec() sub() gsub()
## find the components in a character vector
that contains at least one of the letter 1 or DNase
grep("[ld]",c("Philadephia","milwukee","boston"),value=TRUE)
grepl("[ld]",c("Philadelphia","milwaukee","boston"))
# replace the 1 and d letters with a $
gsub("[ld]","$",c("Philadelphia","milwaukee","boston"))
# find the components in a character vector that contain any letter than 1 or d
grep("[^ld]",c("philadephia","milawakke","boston"),value=TRUE)
grepl("[^ld]",c("philpaphia","milawakke","boston"))
grep("[^top]",c("stop","pause","top"),value=TRUE)
# find the component in a charater vector that contain any of the character 2 or 5
grep("[25]",c("as148","tm254","wd570"),value=TRUE)
grep("[^25]",c("as148","25","wd570"),value=TRUE)
grep("[2-5]",c("as148","tm254","wd189"),value=TRUE)
### find the component in a character vector that contain any other character than the chracter in 2-5 interval
grep("[^2-5]",c("as148","234","167"),value=TRUE)

## the period(.) replaces any charcter
x<- c("target","window","store","stairs")
grep("t.r",x,value=TRUE)
grep("t..r",x,value=TRUE)
x <- c("bnm","as.d","qwe.")
grep("\\.",x,value=TRUE) // COMPONENTS IN A VECTOR
# find the components that contain at least a digit
x<-c("stop","wait23","4abc")
grep("\\d",x,value=TRUE)
x<-c("abc","d ef","ghi ")
grep("\\s",x,value=TRUE)
x<-c("stop","wait35","789")
grep("\\D",x,value=TRUE)
x<-c("bc","d ef", "  ")
grep("\\S",x,value=TRUE)
x<-c("stop","stop12","456","abc-_","","45#","5$#","#D_")
grep("\\w",x,value=TRUE)
x
grep("\\w",x,value=TRUE)
## plotting a scatterPlot
is used for examine the relationship between two numeric variable
adv <- rnorm(30,400,200)

sales<-rnorm(30,200,1000)

plot(sales ~ adv)
plot(sales~adv,type="p")
plot(adv, sales)
## set graphical parameters
## add a title to the chart
plot(sales~adv,main="Sales vs. Advertising Expenses")
## add labels to the axes
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab="Sales In Thousands")
## set limits to the axes values
plot(sales~adv ,main="Sales vs. Advertising Expense",
     xlab="Advertising Expenses",
     ylab="Sales in thousand",
     xlim=c(200,600))
plot(sales~adv ,main="Sales vs. Advertising Expense",
     xlab="Advertising Expenses",
     ylab="Sales in thousand",
     ylim=c(3000,4000))
#set the font type for the title
## 1 -normal 2-bold 3-italic 4-bold italic 5 -symbol
plot(sales~adv,main="Sales vs. Advertising Expenses",
      xlab="Advertising Expenses",
      ylab= "Sales in thousands",
     font.main=1)
## set the font size for the title for the axes label and for axesvalues(default to 1)
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=0.8,
     cex.lab=0.8,cex.axis=0.8)
###add a subtitle
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=0.8,
     cex.lab=0.8,cex.axis=0.8,
     sub="Data for 30 companies")
## set font size for sub title
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=0.8,
     cex.lab=0.8,cex.axis=0.8,
     sub="Data for 30 companies",cex.sub=0.7)
# change font type for the axes labels
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=0.8,
     cex.lab=0.8,cex.axis=0.8,
     sub="Data for 30 companies",cex.sub=0.7,
     font.lab=3)
## redraw the plot
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1)
## change the dots color
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="red")
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="darkblue")
##to see the available color names
colors()
### we can also use hex code to specify the dot color
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33")
## CHANGE ALL THE DOTS SHAPE to PLUS SIGN
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3)
## change the dots size
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3,cex=2)
## come back to default size
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3)
## to change the background color we must first use par()
par(bg="yellow")
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3)
### add a grid to the chart
grid(nx=10,ny=10,col="gray',lty="solid")
par(bg="white")
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3)
### adding the trend line to a scatterplot
plot(sales~adv,main="Sales vs. Advertising Expenses",
     xlab="Advertising Expenses",
     ylab= "Sales in thousands",
     font.main=2,cex.main=1,
     cex.lab=1,cex.axis=1,col="#004A33",
     pch=3)
# to add a trend line we must first fit the data lm()
fit<-lm(sales~adv)
#apply abline() function to object fit
abline(fit)
### plotting a clustered scatterplot
adv <- rnorm(30,400,200)
sales<-rnorm(30,4000,1000)
## create a factor that represents the sector
sector <- sample(1:3,30,replace=TRUE)
sector2<-factor(sector,levels=c(1,2,3),labels=c("Manufacturing","Services","Retail"))

sector2
## draw clustered dot chart
plot(sales~adv,col=sector2,pch=16)
### add a legend to the chart
## the legend position(x and y)
legend(x=550,y=4200,legend=levels(sector2),col=1:3,pch=16,cex=0.5)
plot(sales~adv,col = sector2,pch=16)
## we can also display a line in the legend by using parameter lty instead of pch
plot(sales~adv,col=sector2,pch=16)

legend(x=550,y=4200,legend=levels(sector2),col=1:3,lty="solid",cex=0.5)
## plotting a line graph
a line chart is used to display data that change continuously over time
years<-2007:2016
profit<-c(73,100,85,115,140,165,120,150,195,190)
plot(profit~years,type="l")
plot(years,profit,type="l")
##add a title and axes labels
plot(profit~years,type="l",main="profit chart",
     xlab="year",ylab="profit in thousands")
# setting the line parameters
years <- 2007:2016
profit <- c(73,100,85,115,140,165,120,150,195,190)
# change line color
plot(profit~years,type="l",main="profit chart",xlab="Year",ylab="Profit in Thousands",
     col="red")
### change the line type
plot(profit~years,type="l",main="profit chart",xlab="Year",ylab="Profit in Thousands",
     col="red",lty=4)
six types of line
1.solid 2.dashed 3.dotted 4.dotdash 5.longdash 6.twodash
## change the line width default is 1
plot(profit~years,type="l",main="profit chart",xlab="Year",ylab="profit in thousands",col="red",lty=1,lwd=2)
### add a trend line
fit <-lm(profit~years)
abline(fit)
## plot a stair steps line 
first line is horizontal
plot(profit~years,type="s")
first line is vertical
plot(profit~years,type="S")
## overplotting lines and dots
years <- 2007:2016
profit<-c(73,100,85,115,140,165,120,150,195,190)
## to create a chart with both line and dots
parameter to b
plot(profit~years,type="b",main="profit chart",xlab="Year",ylab="profit in thousands",col="red",lty=1,lwd=2)
## to make line continuous
plot(profit~years,type="o",main="profit chart",xlab="year",ylab="profit in thousands",col="red",lty=1,lwd=2)
## we can play with both line type and dot type
plot(profit~years,type="o",pch=8,cex=1.5,lty=3,lwd=2,col="darkblue")
## plotting two lines
years <- 2007:2016
profitA <- c(73,100,85,115,140,165,120,150,195,190)
profitB <- c(60,95,125,170,120,140,165,180,170,185)
plot(profitA~years,type="l",col="red",lwd=2)
plot(profitB~years,type="l",col="blue",lwd=2)
##add legend to the chart
legend(x=2012,y=115,legend=c("company A","company B"),col=c("red","blue"),lty=1,cex=0.6,title="Profit")
Plotting Bar charts
a bar chart is used to compare values across categories using vertical and horizontal bars 
country <- c("germany","switerland","italy","porptual")
wage<-c(44900,58300,34100,24100)
barplot(wage,names=country)
## adding title ,axes labels and limits to y
barplot(wage,names=country,main="Average wage by country",xlab="countries",ylab="Average wage",cex.main=1.1,ylim=c(0,58300))
## setting bar parameters
barplot(wage,names=country,col="red")
## alternate color
barplot(wage,names=country,col=c("red","green"))
## different colors for each bar
barplot(wage,names=country,col=c("red","green","violet","orange"))
## change the bar border
barplot(wage,names=country,col="red",border="darkgreen")
### change the space between bars default space value is 0.2
barplot(wage,names=country,col="red",space=0)
barplot(wage,names=country,col="red",space=0.5)
barplot(wage,names=country,col="red",space=10)
##plotting histograms
represents the distribution of random variable
x<-sample(500,200,replace=TRUE)
hist(x)
y<-rnorm(200)
hist(y)
## add a custom title
hist(y,main="histogram example")
### change the bar and bordercolor
hist(y,main="histogram example",
     col="red",border="darkgreen")
hist(y,main="histogram example",col="red",breaks=10)
hist(y,main="histogram example",col="red",border="darkgreen",freq=FALSE)
### plotting density lines
represents distribution of continuous variable.names
x <-rnorm(200)
dx<-density(x)
plot(dx)
## add custom title and labels and change the color line line thicker,line format
plot(dx,main="density line",xlab="x",ylab="frequency",col="red",lwd=2,lty=2)
y<- rnorm(200)
dy <- density(y)
## plot for the first line
plot(dx,main="density line",xlab="x",ylab="frequency",col="red",lwd=2,lty=2)
lines(dy,col="darkgreen")
## plotting pie charts
country <- c("germany","switerzland","italy","porptual")
wage<-c(44900,58300,34100,24100)
pie(wage)
## add labels to the chart
pie(wage,labels=country,col=c("red","green","blue","orange"))
## add a custom title and font size
pie(wage,labels=country,col=c("red","green","blue","orange"),
    main="average wages per country",cex.main=0.9,cex=0.8)
## add percenatges
perc<-100*(wage/sum(wage))
perc <- round(perc,0)
perc
labels <- paste(country,perc)
labels
labels<-paste0(labels,"%")
labels
pie(wage,labels=labels)
## we get polygon
pie(wage,labels=country,col=c("red","green","blue","orange"),
    main="average wages per country",edges=TRUE)
### plotting boxplots
to display a variable distribution by minimum , first quartile,median,third quartile ,maximum
x <- rnorm(100)
boxplot(x)
## add title and axis labels
boxplot(x,col="red",main="boxplot",xlab="x",ylab="values")
category <- sample(1:2,100,replace=TRUE)
category
boxplot(x~category,col="red",notch=TRUE)
boxplot(x~category,col=c("red","green"))
//notch = true is for violin shape
%% plotting functions
f <- function(x){x^2+x+1}
plot(f)
plot(f,xlim=c(-100,100))
plot(f,xlim=c(-100,100),col="red",lwd=2)
f2 <- function(x){(exp(x)+1)/(x-1)}
plot(f2,xlim=c(-5,5))
