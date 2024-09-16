A<- matrix(1:10, nrow=5)
A
B <- matrix( 21:40, nrow=2)
B
C <- matrix(1:100, 20)
C
D <- matrix(0,4,4)
D
E <- matrix(0,10)
E
F <- matrix(c(4,5,6,2,3,4,12,34,45,10,55,32),4,3)
F
# snaking
Data <- 1:20

A <-matrix(Data, 4,5) #snake down
A
B <-matrix(Data,4,5,byrow=TRUE) #snake right
B
C<-A+B
C

# Matrix creation by stickingvectors together (binding)

r1 <- c("I", "am","happy")
r2 <- c ("what", "a", "day")
r3 <-1:3
C <- rbind(r1,r2,r3) #each one becomes a Row
C
D <-cbind(r1,r2) #each one becomes a column
D

# Matrix Functions
A <- matrix(1:10, nrow=5)
A
nrow(A)
ncol(A)
dim(A)
typeof(A)
B <- t(A)
B

# Matrix access
A <- matrix(1:10, nrow=5)
A
A[1,1]
A[,1]
A[1,]
A[-2,]
A[,-2]
A[-2,-2]

#Named Vector
Charlie <- 7:11
Charlie
names(Charlie) <- c("a", "b","c","d","e")
Charlie
Charlie[4]
Charlie["d"]
names(Charlie)
#clear names
names(Charlie) <- NULL
Charlie

# Big Basketball project
Games
rownames(Games)
colnames(Games)
Games["LeBronJames", "2012"]
FieldGoals

round( FieldGoals / Games, 2)
round (MinutesPlayed / Games)
round(Salary/Games)
round(Salary/FieldGoals)

# plots COLUMNS against each other
?matplot
FieldGoals
t(FieldGoals)
# transpose the matrix
matplot(FieldGoals) # UGLY ,each rows comes together
matplot(t(FieldGoals)) # ugly too
# Let's check out the parameters, but ggplot is much better
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players,pch=15:18, col=c(1:4,6), horiz=F)
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players,pch=15:18, col=c(1:4,6), horiz=F)

#Subsetting in a vector
x <-c("a","b","c","d","e")
x
x[c(1,4)] #subset
x[1]

Games
Games[1:3, 6:10] # subset of a matrix is a matrix
Games[c(1,10), ] # first and last row, all columns
Games[ , c("2008","2009")] # all players columns 2008 and 2009
Games[1,] # one row, a vector!
Games[1,5] # A vector, too 
!is.matrix(Games[1,])
is.vector(Games[1,])# R automatically guessed you wanted a vector, you can stop it:
Games[1, , drop=F] # now it remains as a matrix not vector
is.matrix(Games[1, , drop=F])
is.vector(Games[1, , drop=F])
Games[1,5, drop=F]

#Data Visualization
#salary
myplot2(Salary)
myplot2(Salary/Games)
myplot2(Salary/FieldGoals)# in-game metrics
myplot2(MinutesPlayed)
myplot2(Points)# in-game metrics Normalized ( to avoid injury skewed results)
# Check out Dwight Howard!
myplot2(FieldGoals/Games)
myplot2(FieldGoals/FieldGoalAttempts)
myplot2(FieldGoalAttempts/Games) #keep an eye on Dwight howard
myplot2(Points/Games) #keep an eye on Dwight howard
# interesting observation
myplot2(MinutesPlayed/Games) # less and less!
myplot2(Games) # what happened in 2011


















