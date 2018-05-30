# manual calculations p.126 of Statistics in plain english

weight <- c(2,5,4,6,8,5,3,
            6,4,8,7,9,6,4,
            5,4,7,9,11,15,12)
group <- as.factor(c(rep('LAL', 7),rep('melt', 7),rep('plac', 7)))


model2 <- aov(weight ~ group)
summary(model2)
leveneTest(weight,group)
bartlett.test(weight,group)
eta_sq(model2)
TukeyHSD(model2)


# Another example

hours <- c(11,5,12,16,8,
           11,13,15,19,21,
           13,16,19,24,28)
group3 <- as.factor(c(rep('ohio',5),rep('texas',5),rep('california',5)))

model3 <- aov(hours~group3)
summary(model3)
leveneTest(hours, group3)
eta_sq(model3)

TukeyHSD(model3)
