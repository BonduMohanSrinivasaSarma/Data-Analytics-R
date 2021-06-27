#Creating Buldings Data Frame
buildings<-data.frame(location=c(1:5),name=c('building1','building2','building3','building4','building5'));
View(buildings)

#Creating details Data Frame
details<-data.frame(survey=c(1,1,1,2,2,2),location=c(1,2,3,2,3,1),efficiency=c(51,64,70,71,80,58),Area=c(210,230,310,320,180,270));
View(details)



#Inner Join of Buildings,Details Data frame and storing in a1
a1<-merge(buildings,details)
View(a1);

#Outer Join of Buildings,Details Data frame and storing in a2
a2<-merge(x=buildings,y=details,by="location",all=TRUE);
View(a2);

#Left Outer Join of Buildings,Details Data frame and storing in a3
a3<-merge(x=buildings,y=details,by="location",all.x=TRUE);
View(a3);

#Right Join of Buildings,Details Data frame and storing in a4
a4<-merge(x=buildings,y=details,by="location",all.y=TRUE);
View(a4);

#Cross Join of Buildings,Details Data frame and storing in a5
a5<-merge(x=buildings,y=details,by=NULL);
View(a5);


#Printing Number of Missing Values in a1
print(paste("No of NA values in a1",sum(is.na(a1))))

#Printing Number of Missing Values in a2
print(paste("No of NA values in a2",sum(is.na(a2))))

#Printing Number of Missing Values in a3
print(paste("No of NA values in a3",sum(is.na(a3))))

#Printing Number of Missing Values in a4
print(paste("No of NA values in a4",sum(is.na(a4))))

#Printing Number of Missing Values in a5
print(paste("No of NA values in a5",sum(is.na(a5))))


#Printing the indices of NA values of a2
print(which(is.na(a2)));

#Printing the indices of NA values of a3
print(which(is.na(a3)));



#Replacing NA values through column mean Imputation
for(i in 1:ncol(a2)) #Iterating through dataframe
{
  for(j in 1:nrow(a2))
  {
    if(is.na(a2[j,i])){#Checking if dataframe value at index is null
      a2[j,i]=mean(a2[ ,i],na.rm = TRUE)} #Replacing with Column mean Value
    if(is.na(a3[j,i])){#Checking if dataframe value at index is null
      a3[j,i]=mean(a3[ ,i],na.rm = TRUE)}#Replacing with Column mean Value
  }
}

#Viewing values after replacing it with column mean values
View(a2);
View(a3);
