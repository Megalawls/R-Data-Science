data(OrchardSprays)
str(OrchardSprays)

maxdecrease <- max(OrchardSprays$decrease)
treatmentdecrease <- subset(OrchardSprays, decrease==maxdecrease)

boxplot(decrease~treatment,
        data=OrchardSprays,
        xlab="Treatment",
        ylab="Decrease")