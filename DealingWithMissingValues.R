x<-read.csv("stores_edited.csv"); #Reading the CSV file and Storing in X
x1<-x #Storing x in other variable
x2<-x #Storing x in other variable
z1<-sum(is.na(x)); #Finding Number of NA Values in Data frame
z2<-sum(!is.na(x)); #Finding Number Of Non NA Values in Data frame
print(paste("Number of missing values is",z1)) #Printing the Number of Missing Values
res1<-(z1/(z1+z2))*100 #Calculating the percentage of missing Values
print(paste("Percentage of missing Values is", res1)); #Printing the percentage of missing values
for(i in 1:ncol(x)) #Loop for Iterating the values
{
  for(j in 1:nrow(x))
  {
    if(is.na(x1[j,i])) #Checking if value of x1 at present index is NA or not
    {
      x1[j,i]<-mean(x[ ,i],na.rm = TRUE); #Replacing NA Value in x1 with mean of columns of x1
      k=j+1; #Storing the value of j+1 in k
      while(is.na(x[k,i])) #Checking the condition so that the value if null to increment the position until the value without
                            #NA is found to replace in x2
      {
        k=k+1; #Incrementing K
      }
      x2[j,i]=x[k,i]; #Storing the non NA value in the given position replacing NA 
    }
  }
}
x[is.na(x)]<-0 #Replacing all NA Values Present in X with 0

error1<-(sum(abs(x-x1))/sum(x))*100 #Calculating the error when column mean imputation is done and stored in error1
error2<-(sum(abs(x-x2))/sum(x))*100 #Calcuting the error when NA value is replaced by the next value which is not null

print(paste("Error when Column mean imputation is followed",error1));
print(paste("Error when replacement of next value in NA is followed",error2))