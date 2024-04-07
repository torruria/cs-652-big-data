//Avg of Number
numbers <- c(7, 12, 5)
average <- mean(numbers)
print(paste(average))
//output
8

//Welcome Code
name <- readline(prompt = "Enter your first name: ")
print(paste("Welcome to R,", name))
//output:
Enter your first name: arun
Welcome to R arun

//comparison
x <- 7
y <- 12
z <- 4

if (x > y) {
  print("x is greater than y")
} else {
  print("x is not greater than y")
}

if (x > z) {
  print("x is greater than z")
} else {
  print("x is not greater than z")
}
//ouput:
 "x is greater than z"
