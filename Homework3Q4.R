# Set seed for reproducibility
set.seed(123)

# Number of data points
n <- 1000

# Generate x values (you can specify the range or generate random values)
x <- runif(n, min = 0, max = 10) #random values between 0 and 10

# Generate epsilon values (normally distributed with mean 0 and variance x^2)
epsilon <- rnorm(n, mean = 0, sd = x^2)

# Compute y values based on the equation y = 2 + 7x + epsilon
y <- 2 + 7 * x + epsilon

# Combine x and y into a data frame
data <- data.frame(x = x, y = y)

# Write data to a CSV file
write.csv(data, "simulated_data_nonconstant_variance.csv", row.names = FALSE)

# Confirmation
cat("Data saved to 'simulated_data_nonconstant_variance.csv'")
