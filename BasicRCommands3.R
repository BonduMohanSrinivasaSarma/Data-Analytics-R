for(i in 1:11) #Iterating for loop for 11 time starting from 1 with the increment 1;
{
  if(i==10)  #Checking if the iteration value is 10 or not
    break;   #if the iteration value is 10 the loop will break and control will flow outsde of loop;
  
  if(i%%2==0) #Checking if the iteration value is even or not
    next; #If the iteration value is even then the next iteration 
           #is processed that is the result below will not be printed for current iteration.
  
  print(paste("The Factorial of",i,"is",factorial(i))); # Used for printing the Output.

}
