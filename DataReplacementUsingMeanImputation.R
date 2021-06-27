x<-data.frame(replicate(10,sample(1:25,20,rep=FALSE)))#Creating the Data Frame using random numbers
x1<-x #Storing the data frame x in another variable x1 for 25% replacement values
x2<-x #Storing the data frame x in another variable x2 for 50% replacement values
x3<-x #Storing the data frame x in another variable x3 for 75% replacement values
count=0; #initializing count to zero
while(count<50) #loop for replacing 50 values at random positions of data frame
{
  r1<-sample(1:20,1,replace = F) #Finding random number for index of row
  c1<-sample(1:10,1,replace = F) #Finding random number for index of column
  k<-x[r1,c1] #Storing the value present at the random index of x1 in k
  if(k!=0) { #checking the value whether it is equal to zero or not to avoid substitution again in same position
    x1[r1,c1]<-0  #If true overwriting 0 in place of that value
    count=count+1; #increasing the count to continue to loop
  }
}
count=0; #initializing count to zero
while(count<100) #loop for replacing 100 values at random positions of data frame
{
  r1<-sample(1:20,1,replace = F) #Finding random number for index of row
  c1<-sample(1:10,1,replace = F) #Finding random number for index of column
  k<-x2[r1,c1] #Storing the value present at the random index of x2 in k
  if(k!=0){ #checking the value whether it is equal to zero or not to avoid substitution again in same position
    x2[r1,c1]<-0 #If true overwriting 0 in place of that value 
    count=count+1; #increasing the count to continue to loop
  }
  
}
count=0; #initializing count to zero
while(count<150) #loop for replacing 100 values at random positions of data frame
{
  r1<-sample(1:20,1,replace = F) #Finding random number for index of row
  c1<-sample(1:10,1,replace = F) #Finding random number for index of column
  k<-x3[r1,c1] #Storing the value present at the random index of x3 in k
  if(k!=0){ #checking the value whether it is equal to zero or not to avoid substitution again in same position
    
    x3[r1,c1]<-0 #If true overwriting 0 in place of that value 
    count=count+1; #increasing the count to continue to loop
  }
}
print(paste("Number of zeros in x1",sum(x1==0))) #Printing Number of zeros in x1
print(paste("Number of zeros in x2",sum(x2==0))) #Printing Number of zeros in x2
print(paste("Number of zeros in x3",sum(x3==0))) #Printing Number of zeros in x3
mean1=array(10); #Declaring a array mean1 to store values of mean of columns of dataframe x1
mean2=array(10); #Declaring a array mean2 to store values of mean of columns of dataframe x2
mean3=array(10); #Declaring a array mean3 to store values of mean of columns of dataframe x3
for(i in 1:10) #loop for storing values in array
{
  mean1[i]=sum(x1[ ,i])/sum(x1[ ,i]!=0);  #Calculating mean of x1 columns by neglecting the value 0 in columns 
                                          #if it is present and storing in array mean1
  mean2[i]=sum(x2[ ,i])/sum(x2[ ,i]!=0);  #Calculating mean of x2 columns by neglecting the value 0 in columns 
                                          #if it is present and storing in array mean2
  mean3[i]=sum(x3[ ,i])/sum(x2[ ,i]!=0);  #Calculating mean of x3 columns by neglecting the value 0 in columns 
                                           #if it is present and 
                                          #storing in array mean3
}
for(i in 1:20) #Loop for overwriting mean of respective columns in the value 0f zero present in that column
{
  for(j in 1:10) #Checking the value if it is zero
  {
    if(x1[i,j]==0)      #Checking the value of x1 if it is zero
      x1[i,j]=mean1[j]; #Replacing zero with mean of the respective columns of x1
    if(x2[i,j]==0)      #Checking the value of x2 if it is zero
      x2[i,j]=mean2[j]; #Replacing zero with mean of the respective columns of x2
    if(x3[i,j]==0)      #Checking the value of x3 if it is zero
      x3[i,j]=mean3[j]; #Replacing zero with mean of the respective columns of x3
  }
}
error1<-(sum(abs(x-x1))/sum(x))*100; #Storing the final result of 25% replacement error in error1
error2<-(sum(abs(x-x2))/sum(x))*100; #Storing the final result of 50% replacement error in error2
error3<-(sum(abs(x-x3))/sum(x))*100; #Storing the final result of 75% replacement error in error3

#Printing the errors

print(paste("Error of 25% replacement is ",error1));
print(paste("Error of 50% replacement is ",error2));
print(paste("Error of 75% replacement is ",error3));



