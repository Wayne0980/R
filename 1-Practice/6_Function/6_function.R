#Create a sequence of numbers from 1 to 10. 
print(seq(1, 10)) 

#Find mean of numbers from 1 to 100. 
print(mean(1:100)) 

#Find sum of numbers frm 1 to 100. 
print(sum(1:100))
#自建函式(有預設值) 

#Create a function with arguments. 
multiply.function <- function(x = 7, y = 9) { 
  result <- x * y 
  print(result) 
} 

#Call the function without giving any argument. 
multiply.function() 

#Call the function with giving new values of the argument. 
multiply.function(6, 8)

