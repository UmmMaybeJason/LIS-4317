# Module 6

# Question 1
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

sum1 <- print(A + B)
sub1 <- print(A - B)

# Question 2
diagnums <- c(4,1,2,3)
diag2 <- diag(diagnums, 4)
print(diag2)

# Question 3
basediag <- diag(3, 5)
print(basediag)

col1 <- c(3, 2, 2, 2, 2)
row1 <- c(3,1,1,1,1)

matrix <- basediag
matrix[1, ] <- col1
matrix[,1] <- row1

print(matrix)
