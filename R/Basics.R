#print("hello world")

#hallo <- "Hello World!"
#hallo

printFunc <- function(string){
  print(string)
}

addition <- function(x, y, isTrue){
  if(isTrue){x+y}
  else{x*y}
}

additional <- function(x, y, isTrue){
 if(x == 0 || y == 0 || isTrue){x+y}
 else{x*y}
}

loop <- function(){
  for(i in 1:10){
   print(additional(10, i, T))
  }
}

aVector <- c("9/11", "was", "an", "inside", "job")
#Anonymous function below to return the head of the above vector
#print((function(x) x[[1]])(aVector))

blackjack <- function(x, y){
  if(x>21&&y>21){0}
  else if(x>21 && y<22){y}
  else if(y>21 && x<22){x}
  else if(x>y){x}
  else if(y>x){y}
}

uniqueSum <- function(x,y,z){
  if(x==y && y==z){0}
  else if(x==y){z}
  else if(x==z){y}
  else if(y==z){x}
  else{x+y+z}
}

tooHot <- function(temp, isSummer){
  if(isSummer && temp<=100 && temp>=60){T}
  else if(!isSummer && temp<=90 && temp>=60){T}
  else(F)
}

leapYear <- function(year){
  if(year %% 4 == 0){
    if(year %% 400 == 0 || year %% 100 != 0){T}
    else{F}
  }else{F}
}

writeToFile <- function(toWrite){
  setwd("C:\\Users\\Megal\\Desktop")
  write.csv(c(0,2,4,6,8), "evens.csv", row.names = F)
}

readAndWrite <- function(){
  setwd("C:\\Users\\Megal\\Desktop")
  evens <- read.csv("evens.csv")
  odds <- apply(evens, 2, function(x) x+1)
  write.csv(odds, "odds.csv", row.names = F)
}


library(ggplot2)
data("iris")
testdata <- iris

#Line below modifies the row 120 of petal width with the function provided, just wanted to faff with R
#testdata["120",c("Petal.Width")] <- lapply(testdata["120",c("Petal.Width")], function(x) x+20)

View(testdata)