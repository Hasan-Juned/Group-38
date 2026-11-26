# read the csv file first
cars <- read.csv("Cars_Datasets_2025.csv")


# Independent variable is: Horse Power
# Dependent variable is: Total Speed


# in this dataset first we need to clean data specially for our selected variables' column

# Horse Power column has character data like: 963 hp, so firstly removed " hp" to make 963 as numerical
cars$HorsePower <- as.numeric(gsub(" hp", "", cars$HorsePower))
cars$Total.Speed <- as.numeric(gsub(" km/h", "", cars$Total.Speed))

# checking the cleaned data for horsepower
class(cars$HorsePower)
summary(cars$HorsePower)

class(cars$Total.Speed)
summary(cars$Total.Speed)


# firstly histogram for Horse Power

hist(cars$HorsePower,
     main = "Car Horsepower",
     xlab = "Horsepower (hp)",
     ylab = "Frequency")


# Secondly histogram for Total Speed

hist(cars$Total.Speed,
     main = "Total Speed (Maximum Speed)",
     xlab = "Maximum speed (km/h)",
     ylab = "Frequency")









