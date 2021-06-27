#Question 1
data("airquality")
View(airquality)

#Question 2
str(airquality)

#Question 3
print(paste("The Number of variables(columns) in dataset air quality is",ncol(airquality)));

#Question 4
print(paste("The Number of Observations(rows) in dataset air quality is",nrow(airquality)))

#Question 5
is.na(airquality);

#Question 6
which(is.na(airquality));

#Question 7
print(paste("No of NA Values is",sum(is.na(airquality))));

#Question 8
na.omit(airquality);
