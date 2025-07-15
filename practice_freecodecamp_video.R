#LOAD DATA
library(datasets)#Load base packages manually
#SUMMARIZE DATA
head(iris)
summary(iris)
plot(iris)
#CLEAN UP
#Clear packages
detach("package:datasets", unload=TRUE)#For base
#Clear Plots
dev.off()#Only if there is a plot
#Clear console---Edit>Clear Console

#Clear mind :)
install.packages('pacman')
pacman::p_load(
  dplyr, stringr, tidyr, lubridate, data.table,
  rio, readr, readxl, haven,
  ggplot2, ggvis, plotly, corrplot,
  httr, jsonlite, rvest,
  rmarkdown, knitr, shiny, flexdashboard,
  caret, randomForest, xgboost, e1071,
  forecast, zoo, tsibble,
  car, psych, stats
)
library(pacman)
#Clear packages
p_unload(dplyr, stringr, tidyr, lubridate)#Clear specific packages
p_unload(all)#Clears all add ons

#Clear Console
cat("\014")#Ctrl L

#BASIC GRAPHICS
library(datasets)
head(iris)
#PLOT DATA WITH PLOT()
?plot#Help for plot()
plot(iris$Species)#Categorical variables
plot(iris$Petal.Length)#Quantitative variable
plot(iris$Species,iris$Petal.Width)#Cat and Quant
plot(iris$Petal.Length, iris$Petal.Width)#Quant & Quant
plot(iris)#Entire dataset
#Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
     col="#cc0000",#Hexcode for datalab.ccred
     pch=19, # Use solid circles for points
     main="Iris: Petal Length vs Petal Width",
     xlab="Petal Length",
     ylab="Petal Width")
#PLOT FORMULAS WITH PLOT()
plot(cos, 0, 2*pi)
plot(exp,1,5)
plot(dnorm, -3,+3)
#Formula plots with options
plot(dnorm, -3, +3,
     col="#cc0000",
     lwd=5,
     main="Standard Normal Distribution",
     xlab="z-scores",
     ylab="Density")
#BAR CHATS
#load data
?mtcars
head(mtcars)
#bar chats
barplot(mtcars$cyl)#Doesn't work
#Need a table with frequencies for each category
cylinders<-table(mtcars$cyl)#Create table
barplot(cylinders)#Bar chats
plot(cylinders)#Default X-Y plots (lines)
#CLEAN UP
#Clear environment
rm(list=ls())
#Histograms
#For data that is quantitative, scaled or measured, interval or ratio level
#Look at the shape, gaps, outliers, symmetry
#Load Data
?iris
head(iris)
#Basic Histograms
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Histogram By Group
#Put graghs in 3 rows and 1 column
par(mfrow=c(3,1))
#Histograms for each species using options
hist(iris$Petal.Width[iris$Species=="setosa"],
     xlim=c(0,3),
     breaks=9,
     main="Petal Width For Setosa",
     xlab="",
     col="red")

hist(iris$Petal.Width[iris$Species=="versicolor"],
     xlim=c(0,3),
     breaks=9,
     main="Petal Width For Versicolor",
     xlab="",
     col="purple")

hist(iris$Petal.Width[iris$Species=="virginica"],
     xlim=c(0,3),
     breaks=9,
     main="Petal Width For Virginica",
     xlab="",
     col="blue")
#Restore graphic parameter
par(mfrow=c(1,1))
#CLEAN UP
detach("package:datasets", unload=TRUE)

#Scatterplots-Most common type for bivariate distribution
#For visualizing the association between two quantitative variables
#Check for linearity, spread, outliers, correlation
#LOAD DATASETS AND PACKAGES
library(datasets)#Load/Unload datasets manually
#LOAD DATA
?mtcars
head(mtcars)
#PLOTS############################################

#Good to first check univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)
#Basic X-Y plot for two quantitative variables
plot(mtcars$wt,mtcars$mpg)
#Add some options
plot(mtcars$wt,mtcars$mpg,
     pch=19,  #Solid circle
     cex=1.5,  #Make Size 150%
     col="#cc0000",  #Red
     main="MPG as function of Weight of Cars",
     xlab="Weight (In 1000 pounds)",
     ylab="MPG") 

#OVERLAYING PLOTS-GIVES MANY VIEWS
#Increased information density
#Use views that compliment and support one another
#LOAD DATA
#Annual Canadian Lynx Trappings 1821-1934
?lynx
head(lynx)
#HISTOGRAM############################################

#Default
hist(lynx)
#Add options
hist(lynx,
     breaks=14, #"suggests" 14 bins
     freq=FALSE, #Axis show density not frequency
     col = "thistle1",#Color for histogram
     main=paste("Histogram of Annual Canadian Lynx",
                "Trappings,1821-1934"),
     xlab="Number of Lynx Trapped")

#Add a normal Distribution
curve(dnorm(x, mean=mean(lynx),sd=sd(lynx)),
      col="thistle4",# Color of curve
      lwd=2,#Line width of 2 pixels
      add=TRUE) #Superimpose on the previous graph
#Add two kernel density estimators
lines(density(lynx), col = "blue", lwd= 2)
lines(density(lynx, adjust=3), col="purple", lwd=2)
#Add a rug plot
rug(lynx,lwd=2, col="gray")

#BELOW COMES AFTER GRAPHICAL SUMMARIES
#Graphs first numbers later
######BASIC STATISTICS###################################

#LOAD DATA
head(iris)
#SUMMARY()
summary(iris$Species)  #Categorical variable
summary(iris$Sepal.Length)#Quantitative variable
summary(iris)#Entire dataframe

#INSTALL AND LOAD PACKAGES
install.packages("pacman")

pacman::p_load(
  dplyr, stringr, tidyr, lubridate, data.table,
  rio, readr, readxl, haven,
  ggplot2, ggvis, plotly, corrplot,
  httr, jsonlite, rvest,
  rmarkdown, knitr, shiny, flexdashboard,
  caret, randomForest, xgboost, e1071,
  forecast, zoo, tsibble,
  car, psych, stats
)
library(pacman)
library(datasets)#Load/unload base packages manually
#LOAD DATA
head(iris)
#PYSCH PACKAGE
#load pysch package (download if needed)
p_load(psych)
p_help(psych)#Opens package PDF in browser
p_help(psych, web=F)#Opens help in R viewer

#DESCRIBE()#####################################################################

#For Quantitative variables only.
describe(iris$Sepal.Length)# One Quantitative variable
describe(iris)# Entire data frame

#SELECTING CASES
#Focus analysis to particular cases
#Select by category or by value or both

#LOAD DATA
head(iris)
#ALL DATA
hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)# Get names and n for each species
#SELECT BY CATEGORY#############################################################

#Versicolor
hist(iris$Petal.Length [iris$Species=="versicolor"],
     main="Petal Length Versicolor")
#Virginica
hist(iris$Petal.Length [iris$Species=="virginica"],
     main="Petal Length Virginica")

#setosa
hist(iris$Petal.Length [iris$Species=="setosa"],
     main="Setosa")

#SELECT BY VALUE

#Short petals only(all setosa)
hist(iris$Petal.Length [iris$Petal.Length<2],
     main="Petal Length <2")
#MULTIPLE SECTORS ONLY#######################################################
#Short virginica petals only
hist(iris$Petal.Length [iris$Species=="virginica" &
                     iris$Petal.Length<5.5],
     main="Petal Length:Short virginica")

#CREATE SUBSAMPLE###########################################################

#Format: data[rows,columns]
#Leave rows or columns blank to select all

i.setosa<-iris[iris$Species=="setosa", ]

#EXPLORE SUBSAMPLE
head(i.setosa)
summary(i.setosa$Petal.Length)
hist(i.setosa$Petal.Length)
#CLEAN UP
rm(list=ls())

#ACCESSING DATA################################################################
#Data formatting
#Data structure->Vector, Matrix/Array, Data Frame, List
#Vector-> 1+ numbers in 1d array, same data type, R's basic data object
#Matrix-> 2 dimensions, same length, Same data class, columns not named-reffered to by index numbers
#Array-> Identical to a matrix but 3+ dimensions
#Data frame-> Can have vectors of multiple types, All same length, Closest R analogue to a spreadsheet
#R has special functions for working with data frames
#List-> Most flexible, Ordered collection of elements,Can have any class, any length or structure
#Lists can include lists

#COERSION-> Changing a data object from one type to another is a good thing in R

#DATA TYPES

#Numeric
n1<- 15 #Double precision by default
n1
typeof(n1)

n2<-1.5
n2
typeof(n2)
#Character
c1<-"c"
c1
typeof(c1)

c2<-"a string of text"
c2
typeof(c2)

#Logical
l1<-TRUE
l1
typeof(l1)

l2<-F
l2
typeof(l2)

#DATA STRUCTURES################################################################

#Vector#############################
V1<-c(1,2,3,4,5)
V1
is.vector(V1)

v2<-c("a","b","c")
v2
is.vector(v2)

v3<-c(TRUE,TRUE, FALSE,FALSE,TRUE)
v3
is.vector(v3)

#Matrix####################################################
m1<-matrix(c(T,T,F,F,T,F),nrow=2)
m1

m2<-matrix(c("a","b",
             "c","d"),
           nrow=2,
           byrow=T)
m2

###Array###################################################################
##Give data then dimensions(rows,columns,tables)
a1<-array(c(1:24),c(4,3,2))
a1

#Dataframe#############################################################
#Can combine vectors of the same length
vNumeric<-c(1,2,3)
vCharacter<-c("a","b","c")
vLogical<-c(T,F,T)

dfa<-cbind(vNumeric,vCharacter,vLogical)
dfa#Matrix of one data type

df<- as.data.frame(cbind(vNumeric,vCharacter,vLogical))
df#Makes data frame with different data types

##List########################################################################
o1<-c(1,2,3)
o2<-c("a","b","c","d")
o3<-c(T,F,T,T,F)

list1<-list(o1,o2,o3)
list1

list2<-list(o1,o2,o3,list1)#Lists within lists
list2

#COERCING TYPES##############################################################

##Automatic Coercion##########################################################
#Goes to the 'least restrictive' data type
(coerce1<-c(1,"b",TRUE))
typeof(coerce1)
##Coerce numeric to integer####################################################
(coerce2<-5)
typeof(coerce2)

coerce3<-as.integer(5)
typeof(coerce3)

#Coerce character to numeric
(coerce4<-c("1","2","3"))
typeof(coerce4)

(coerce5<-as.numeric(c("1","2","3")))
coerce5
typeof(coerce5)

#Coerce matrix to data frame
(coerce6<-matrix(1:9,nrow=3))
is.matrix(coerce6)
(coerce7<-as.data.frame(matrix(1:9,nrow=3)))
is.data.frame(coerce7)

#CLEAN UP

#Clear environment
rm(list=ls())

#FACTORS
#Has to do with categories and names
#An "attribute" of a vector that specifies the possible values and their order

#CREATE DATA###################################################################
(x1<-1:3)
(y<-1:9)
#Combine variables
(df1<-cbind.data.frame(x1,y))
typeof(df1$x1)

#AS FACTOR####################################################################
(X2<-as.factor(c(1:3)))
(df2<-cbind.data.frame(X2,y))
typeof(df2$X2)
str(df2)
#DEFINE EXISTING VARIABLE AS FACTOR#############################################
x3<-c(1:3)
df3<-cbind.data.frame(x3,y)
(df3$x3<-factor(df3$x3,
                levels=c(1,2,3)))
typeof(df3$x3)
str(df3)

#LABELS FOR FACTOR############################################################
x4<-c(1:3)
df4<-cbind.data.frame(x4,y)
df4$x4<-factor(df4$x4,
               levels=c(1,2,3),
               labels=c("macOS","Windows","Linux"))
df4
typeof(df4$x4)
str(df4)
#ORDERED FACTORS AND LABELS#####################################################
x5<-c(1:3)
df5<-cbind.data.frame(x5,y)
df5
(df5$x5<-ordered(df5$x5,
                 levels=c(3,1,2),
                 labels=c("No","Maybe","Yes")))
df5
typeof(df5$x5)

#CLEAN UP
#Clear environment
rm(list=ls())

#ENTERING DATA
#Ad hoc data
#Colon operator

#Assigns number 0 through 10 to x1
x1<-0:10
x1
#Descending order
x2<-10:0
x2
#SEQ########################################################################
?seq#R seq help
#Ascending values(duplicates 1:10)
(x3<-seq(10))
#Specify change in values
(x3<-seq(30,0,by=-3))
#ENTER MULTIPLE VALUES WITH C##############################################

#c=concatenate (or combine or collect)
?c #R help on c

x5<-c(5,4,1,6,7,2,2,3,2,8)
x5
#SCAN#########################################################################
?scan #R help on scan
#Hit return after each number
#Hit return twice to stop
x6

#REP#########################################################################
?rep#R help on rep
x7<-rep(TRUE,5)
x7
#Repeats sets
x8<-rep(c(TRUE,FALSE),5)
x8
#Repeats items in set
x9<-rep(c(TRUE,FALSE),each=5)
x9

#CLEAN UP
#Clear console
rm(list=ls())

#IMPORTING DATA
install.packages("pacman")

pacman::p_load(
  dplyr, stringr, tidyr, lubridate, data.table,
  rio, readr, readxl, haven,
  ggplot2, ggvis, plotly, corrplot,
  httr, jsonlite, rvest,
  rmarkdown, knitr, shiny, flexdashboard,
  caret, randomForest, xgboost, e1071,
  forecast, zoo, tsibble,
  car, psych, stats
)

#CSV,TXT,XLSX,JSON
#rio combines all of R's import functions into one simple utility 
#INSTALL AND LOAD PACKAGES--We do this every other time we start R

#ABOUT EXCEL FILES
#Reading Excel Spreadsheets-Avoid doing so if possible
#Export the data from excel and use read.delim or read.csv
#Importing with rio
rio_csv<-import("Real_Estate_Sales_2001-2022_GL.csv.csv")
head(rio_csv)
#TXT
#Don't have the a TXT file for practice but I understand the concept
#rio_txt<-import("Real_Estate_Sales_2001-2022_GL.csv.txt")
#head(rio_txt)

#Excel XLSX file
#rio_xlsx<-import("Real_Estate_Sales_2001-2022_GL.csv.xlsx)
#head(rio_slsx)

#DATA VIEWER
?View
View(rio_csv)

#READ.TABLE FOR TXT FILES

#R's built-in function for text files (used by rio)

#TEXT FILES
#Load a spreadsheet that has been saved as tab-delimited
#text file. Need to give complete address to file
#This command gives an error on missing data but works on complete data
r.txt1<-read.table("Real_Estate_Sales_2001-2022_GL.csv.txt", header=TRUE)#dont ave a txt file 
#This works with missing data by specifying the separator:
#\t for tabs,sep="," for commas.R converts missing to "NA"
r_txt2<-read.table("Real_Estate_Sales_2001-2022_GL.csv.txt", 
                   header=TRUE,
                   sep="\t")# I Don't have a txt file 

#READ.CSV for CSV files ###################################################################
