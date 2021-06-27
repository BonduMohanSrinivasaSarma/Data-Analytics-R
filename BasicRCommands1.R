x=2
repeat
{
  x=x^2
  print(x)
  if(x>100)
  {
    break
  }
}


#if else Conditions
x<-5
if(x>5){
  print("x is greater than 5")
} else if(x==5){
  print("x is equal to 5")
} else{
  print("x is less than 5")
}



vtr<-c(150,200,250,300,350,400)
option <-"mean"
switch(option,
       "mean"= print(mean(vtr)),
       "mode"= print(mode((vtr))),
       "median"= print(median((vtr)))
)



x=2
while(x<1000)
{
  x=x^2
  print(x)
}




#for loop
vtr <-c(7,19,25,65, 45)
for( i in vtr) {
  print(i)
}



x<-1:5
for(val in x){
if(val == 3){
break
}
print(val)
}



for(iget in 1:15)
{
  if((i%%2)==0){
    next
  }
  print(i)
}


