#Reading the table X from Working Directory.
df1<-read.table("X");
#Displaying the Dimensions of x
dim(df1);

#Box Plotting values in df1[,2]
boxplot(df1[,2]);
#Box Plotting values in df1[,3]
boxplot(df1[,3]);
#Box Plotting values in df1[,15]
boxplot(df1[,15]);

#For removing the outliers
for(i in 1:nrow(df1))
{
  if(df1[i,2]>27000)
  {
    df1[i,2]<-0;
  }
 
  if(df1[i,3]>37600)
  {
    df1[i,3]<-0;
  }
  
  if(df1[i,15]>1300000)
  {
    df1[i,15]<-0;
  }
}

#Box Plotting values in df1[,2] after removing the outliers
boxplot(df1[,2]);
#Box Plotting values in df1[,3] after removing the outliers
boxplot(df1[,3]);
#Box Plotting values in df1[,15] after removing the outliers
boxplot(df1[,15]);