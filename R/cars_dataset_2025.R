# read the csv file first
cars <- read.csv("Cars_Datasets_2025.csv")


# Independent variable is: Horse Power
# Dependent variable is: Total Speed


# in this dataset first we need to clean data specially for our selected variables' column

# Horse Power column has character data like: 963 hp, so firstly removed " hp" to make 963 as numerical
cars$HorsePower <- as.numeric(gsub(" hp", "", cars$HorsePower))

# checking the cleaned data for horsepower
class(cars$HorsePower)
summary(cars$HorsePower)
