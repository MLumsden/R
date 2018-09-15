setwd("~/Programming/R/R")
## Read in the data
data <- read.table("nations.csv", header=TRUE, sep=",")

## Access data and names
names(data)  # list names of objects
dim(data)  # display dimensions of object
data$popul  # display name popul from object data

## Correlations
cor(data$drate, data$doctors, use="complete.obs", method="pearson")

## Scatterplots
plot(data$drate, data$doctors)

## Fit a linear regression
model <- lm(data$drate ~ data$doctors+data$energy+data$density)  #linear model
summary(model)  # display the results

## Plots
par(mfrow=c(3,3))  # Allow plots do be displayed at once
plot(model)  # All plots
plot(model$residuals) # Residuals
plot(model$fitted.values) # Fitted Values
plot(model$fitted.values, model$residuals)  # fitted values vs residuals




