#For Loop practice
for(i in 1:7){
  
  cat("For Loop:",i,"\r\n")
}

#while Loop
i<-0
while(i<7){
  
  i<-i+1
  cat("while loop:",i,"\r\n")
  
}

#repeat loop
x<-0
repeat{
  
  x<-x+1
  cat("Repeat loop:",x,"\r\n")
  
  if(x>7)
    break
}
# 9*9 table
for(i in 1:9)
{
  
  for(j in 1:9)
  {
    
    k = i*j
    cat(i,"*",j,"=",k,"  ")
  }
  cat("\r\n")
}

