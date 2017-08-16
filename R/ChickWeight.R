data(ChickWeight)
library(ggplot2)

one <- subset(ChickWeight, Diet=="1")
two <- subset(ChickWeight, Diet=="2")
three <- subset(ChickWeight, Diet=="3")
four <- subset(ChickWeight, Diet=="4")

doTheThing <- function(df){
  thisList <- list()
  for(age in 0:21){
    if(age%in%df$Time){
      temp<- subset(df, Time==age)
      days <- temp$Time[[1]]
      meanWeight <- mean(temp$weight)
      diet <- temp$Diet[[1]]
      
      thisList[[length(thisList)+1]] <- data.frame(days, diet, meanWeight)
    }
  }
  thisList
}

getResults1 <- doTheThing(one)
getResults2 <- doTheThing(two)
getResults3 <- doTheThing(three)
getResults4 <- doTheThing(four)

chicks <- c(getResults1, getResults2, getResults3, getResults4)

finalChicks <- do.call(rbind, chicks)

ggplot(finalChicks, aes(x=days, y=meanWeight, group=diet, color=diet)) + 
      geom_line(size=1) + 
      scale_color_manual(name="Chick Diet", values=c("#ff33cc", "#ff00ff", "#ff66ff", "#ff66cc")) +
      xlab("Age in Days") +
      ylab("Average Weight") 


chikkens <- list()

  for(chikken in 1:50){
  temp <- subset(ChickWeight, Chick==chikken)
  chickDiet <- temp$Diet[[1]]
  highestAge <- max(temp$Time)
  totalGrowth <- max(temp$weight)-min(temp$weight)
  growthRate <- totalGrowth/highestAge
          print(growthRate) #measured in gm per day
  chikkens[[chikken]] <- data.frame(chikken, chickDiet, highestAge, totalGrowth, growthRate)
}

finalData <- do.call(rbind, chikkens)

boxplot(growthRate~chickDiet, data=finalData, xlab="Diet", ylab="Growth Rate (Total growth/time in g/Day)")
