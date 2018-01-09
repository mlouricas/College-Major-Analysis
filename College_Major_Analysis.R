install.packages("devtools")
devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
data(college)

devtools::install_github("jhudsl/matahari")
library(matahari)

dance_start(value = FALSE, contents = FALSE)

library(ggplot2)

qplot(x= median, y = major_category, data = college)

g <- ggplot(college, aes(major_category, median)) + geom_point(color = "navyblue")
g

fit <- lm(median ~ major_category, college)
plot(fit, which = 2)
summary(fit)$coef

fitno <- lm(median ~ major_category -1 , college)
plot(fitno, which = 2)
summary(fitno)$coef

eng <- relevel(as.factor(college$major_category), "Engineering")
fit2 <- lm(median ~ eng, college)
summary(fit2)$coef