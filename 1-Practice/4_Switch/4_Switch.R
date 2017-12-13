x1 <- sample(1:6,size =1)
y  <- switch(
  
    EXPR = x1,
    "1" = "Wayne",
    "2" = "Tony",
    "3" = "Ethan",
    "4" = "Troy",
    "5" = "Neil",
    "Unkown"
)
cat(x1,y)

