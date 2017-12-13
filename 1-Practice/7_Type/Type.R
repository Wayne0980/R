# Create a vector 
pokerK <- c("David", "Charlemagne", "Caesar", "Alexandre") 
print(pokerK) 
# Get the class of the vector 
print(class(pokerK)) 
"Charlemagne" %in% pokerK

#Create a list 
list1 <- list(DOB = c("BC1000", "AD768", "BC100", "BC356"), Score = 100, Name = pokerK) 
# Print the list 
print(list1) 
# Get the class of the list 
print(class(list1)) 
# Create a matrix 
M = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE) 
print(M) 
# Get the class of the matrix 
print(class(M)) 

# Create the data frame. 
BMI <- data.frame( 
  gender = c("Male", "Female", "Female"), 
  height = c(176, 171.5, 165), 
  weight = c(70, 53, 49), 
  Age = c(37, 33, 28)) 
print(BMI) 
print(class(BMI)) 