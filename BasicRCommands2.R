#1 Question
freqency<-function()
{
n<-readline("Input any Number: ");
n<-as.integer(n);
a<-c(rep(0,10))
d=0;
while(n>0)
{
    lastDigit=n%%10;
    if(lastDigit==0)
      d=d+1;
    a[lastDigit]=a[lastDigit]+1;
    n=n%/%10;
}
print(paste("The frequency of  0","=",d));
for(i in 1:9){
   
print(paste("The frequency of ",i,"=",a[i]));
}
}

freqency();


#Question 2
binarytodecimal<-function(){
  sum=0;
  num<-readline("Input a Binary Number : ");
  num<-as.integer(num);
  base=1;
  while(num!=0)
  {
    q=num%%10;
    sum=sum+q*base;
    base=base*2;
    num=num%/%10;
  }
  print(paste("The Decimal Number:",sum));
}

binarytodecimal();


#Question 3
pyramid <- function() {
  n=readline("Input number of rows : ");
  n=as.integer(n);
  # Upper triangle
  space <- n - 1
  for (i in 0:(n - 1)) {
    for (j in 0:space) cat(" ")
    for (j in 0:i) cat("* ")
    cat("\n")
    space <- space - 1
  }
}

pyramid();


#Question 4
numberpyramid<- function() {
  
  max<-readline("Input number of rows : ");
  max<-as.integer(max);
  space <- max - 1
  for (i in 0:(max - 1)) {
    for (j in 0:space) cat(" ")
    for (j in 0:i) cat((i+1)," ")
    cat("\n")
    space <- space - 1
  }
  
  
}

numberpyramid();

#Question 5
diamond <- function() {
  
  max<-readline("Input number of rows(half of diamond) : ");
  max<-as.integer(max);
  space <- max - 1
  for (i in seq(1,(2*max - 1),2)) {
    for (j in 1:space) {if(i!=2*max-1) cat(" ")}
    space <- space - 1
    for (j in 1:i)  cat("*")
    cat("\n")
  }
  space=1;
  for (i in 2:max)
  {
    for(j in 1:(i-1)) cat(" ");
    for(j in max:i) cat("*");
    for(j in (max-1):i) {if(i!=max) cat("*");}
    cat("\n");
  }
  
}
diamond();

#Question 6
numberpyramid2<- function() {
  max<-readline("Input number of rows : ");
  max<-as.integer(max);
  for(i in 1:max)
  {
    for(j in 1:(max-i)){ if(i!=max) cat(" ");}
    for(k in 1:i) cat(k);
    for(l in (i-1):1) {if(i!=1) cat(l);}
    cat("\n");
  }
}

numberpyramid2();


#Question 7
product<-function()
{
  n<-readline("Input a number : ");
  n<-as.integer(n);
  m<-n
  pro=1;
  while(n>0)
  {
    q=n%%10;
    pro=pro*q;
    n=n%/%10;
  }
  print(paste("The product of digits ",m," is :",pro));
}
product();



#Question 8
pow<-function()
{
  x<-readline("Input the base : ");
  x<-as.integer(x);
  y<-readline("Input the exponent : ");
  y<-as.integer(y);
  ans=1;
  for(i in 1:y)
  {
    ans=ans*x;
  }
  print(paste(x,"^",y,"=",ans));
}
pow();


#Question 9
sumall<-function(){
a<-c();
sum=0;
cat("Numbers between 100 and 200, divisible by 9:\n")
for(i in 100:200)
{

  if(i%%9==0){
    sum=sum+i;
    a<-c(a,i);
  }
}

print(a);
print(paste("The sum:",sum));
}
sumall();

#Question 10
fib<-function(){
n<-readline("Input number of terms to display : ");
n<-as.integer(n);
a=0;
b=1;
x<-c(0,1);
for(i in 3:n)
  {
  c=a+b;
  x<-c(x,c);
  a=b;
  b=c;
  }
cat(paste("Here is the Fibonacci series upto to",n,"terms : "));
cat(x);
}

fib();

#Question 11
Series<-function(){
  n<-readline("Input the value for nth term : ");
  n<-as.integer(n);
sum=0;
ans=0;
x<-c("");
for(i in 1:n)
{
  x<-c();
  sum=0;
  for(j in 1:i)
  {
    x<-c(x,j);
    if(j!=i){
      x<-c(x,'+');
    }else{
      x<-c(x,'= ');}
    sum=sum+j;
    }
  k=sum;
  ans=ans+k;
  cat(x);
  cat(sum);
  cat("\n")
}
cat(paste("The sum of the above series is : ",ans));
}

Series();

}



