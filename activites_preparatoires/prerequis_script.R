#!/usr/bin/env Rscript

################################################################################
## DU Bii - module 3 "R et statistiques"
## commandes du diaporama
## Claire Vandiedonck
################################################################################


# PREMIERS PAS AVEC R: dias 3 à 23
#----------------------------------

## Some very simple examples
2 + 2
exp(-2)
log(100,base = 10)
?exp # equivalent to help(exp)

## Assigning data into R objects, using and reading them
x <- 2
y <- x + 3
s <- "this is a string of characters"
x
y
s
x + x
x^y
x <- 4
y
y <- x + 3
y

#Managing objects in your R Session
ls()
rm(y)
ls()
rm(list = ls())# pour tout deleter
ls()


## Managing your session
sessionInfo()
getwd()
#setwd()

# Creating a folder in your working directory
list.files()
dir.create("myfolder")
list.files()
ls()

zz <- file("mynewfile.txt", open = "wt") 
list.files()
close(zz)

sink("myRoutputs.Rout") 
1 + 1
x <- 4
is.numeric(x)
sink()

zz <- file("myRoutputs2.Rout", open = "wt") 
sink(zz)
is.numeric(x)
1:10
sink()
close(zz)

# Saving your session, data and history
save(x, file = "x.RData")
save.image(file = "AllMyData.RData")
savehistory(file = "MyHistory.Rhistory")
#load("x.RData")
#load("AllMyData.RData")

# Running a set of commands = run a script
#source ("myscript.R")


# ====> DIA 23 : Interactive tutorials with the SWIRL package:
install.packages("swirl") # once you have done it, no need to reinstall it -> nous verrons plus loin dans les cours comment installer des paquets de R
library(swirl) # pour charger le paquet swirl depuis votre bibiotheque dans votre session -> a faire a chaque session pendant laquelle vous voulez utiliser swirl
swirl() # pour demarrer swirl
#bye() or 0 and 0 to quit swirl -> les instructions en cours de leçon sont rappelées dans le diaporama 


# LES TYPES DE VARIABLES ET D'OBJETS: dias 24 à 27
#-------------------------------------------------

# Classes of R objects
x <- c(3,7,1,2)
x < 2
x == 2
s <- "this is a string of characters"
mode(x)
mode(s)
as.numeric(x < 2)


# LES VECTEURS: dias 28 à 34
#---------------------------

# Vectors
a <- c()
a
weight <- c(60, 72, 57, 90, 95, 72)
weight
4:10
seq(4,10)
seq(2,10,2)
rep(4,2)

rep(seq(4,10,2))
c(rep(1,4),rep(2,4))
c(5,s)
mode(c(5,s))
class(c(5,s))
length(1:10)
length(weight)
str(weight)


size <- c(1.75, 1.8, 1.65, 1.9, 1.74, 1.91)
size^2
weight <- c(60, 72, 57, 90, 95, 72)
bmi <- weight/size^2 
bmi

sort(size)
mean(size)
sd(size)
median(size)
min(size)
max(size)
range(size)
summary(size)

size[1]
size[2]
size[6]
size[c(2,6)]
size[c(6,2)]
min(size[c(6,2)])

names(size)
names(size) <- c("Fabien","Pierre","Sandrine","Claire","Bruno","Delphine")
size
str(size)
my_vector <- c("one" = 1, "two" = 2, "three" = 3)
my_vector
str(my_vector)


# LES MATRICES: dias 35 à 44
#---------------------------

# Creating a matrix with matrix()
myData <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE)
myData

myData <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = FALSE)
myData

length(myData)
myData[4]

# Slicing matrices
myData
dim(myData)
myData[1,2]
myData[2,1]
myData[,1]
myData[2,]
myData[,2:3]
dim(myData[,2:3]) 

# Strcuture and dimensions:
dim(myData)
mode(myData)
class(myData)
class(myData[,1]) 
str(myData)
nrow(myData)
ncol(myData)
length(myData[1,])
length(myData[,1])
dim(myData)[1]

# Creating an empty matrix
newmatrix <- matrix(NA, 2,3) # or matrix(, 2,3) with NA by default 
newmatrix
dim(newmatrix)
is.na(newmatrix)
mode(newmatrix)
class(newmatrix)
str(newmatrix)

# Filling a matrix:
newmatrix[2,3] <- "toto"
newmatrix
newmatrix[,1] <- "tutu" 
newmatrix
newmatrix[,2] <- c("titi","tata")
newmatrix
is.na(newmatrix)

# Creating a matrix by binding vectors:
myData2 <- cbind(weight, size, bmi)
rownames(myData2) 
myData2
myData3 <- rbind(weight, size, bmi)
myData3
t(myData2) # transpose myData2 -> we obtain the same matrix as myData3

# Row and column names of a matrix
rownames(myData2)
colnames(myData2)
rownames(myData) 
colnames(myData)
colnames(myData) <- c("one", "two", "three") 
rownames(myData) <- c("A", "B") 
myData
myData["B",]
myData[,"two"]

# Operations and functions on matrices:
myData2*2
summary(myData2)
mean(myData2)
mean(myData2[,1])

# Saving data
save.image(file = "Prerequis.RData")
save(weight, size, bmi, file = "anthropo.RData")
# load("anthropo.RData")
