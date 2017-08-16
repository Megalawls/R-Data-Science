data(CO2)
str(CO2)
#Plant is an ordered factor

mean_uptake <- mean(CO2$uptake, na.rm = T)
print(mean_uptake)

#boxplot(uptake~Type, data=CO2, xlab="Type", ylab="Uptake")

miss <- subset(CO2, Type=="Mississippi")
qweeb<- subset(CO2, Type!="Mississippi")

meanchecker <- function(vector1, vector2){
  mean1<- mean(vector1, na.rm = T)
  mean2<- mean(vector2, na.rm = T)
  
  if(mean1>mean2){
    return(paste("Vector One has a greater mean, at a mean uptake of", mean1))
  }else{
    return(paste("Vector Two has a greater mean, at a mean uptake of", mean2))
  }
}

print(meanchecker(miss$uptake, qweeb$uptake))