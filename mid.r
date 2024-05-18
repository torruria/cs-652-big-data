# Load necessary libraries
library(MASS)
library(ggplot2)

#linear Reggression
# Load the Boston dataset
data("Boston")

# Fit the linear regression model
linear_model <- lm(medv ~ rm, data = Boston)

# Summary of the model
summary(linear_model)

# Plot the data and the regression line
ggplot(Boston, aes(x = rm, y = medv)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Linear Regression: Median Value vs. Rooms", x = "Average Number of Rooms (rm)", y = "Median Value of Homes (medv)")

# Ploynomial
# Fit the polynomial regression model
poly_model <- lm(medv ~ poly(rm, 2), data = Boston)

# Summary of the model
summary(poly_model)

# Plot the data and the polynomial regression line
ggplot(Boston, aes(x = rm, y = medv)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ poly(x, 2), col = "red") +
  labs(title = "Polynomial Regression: Median Value vs. Rooms", x = "Average Number of Rooms (rm)", y = "Median Value of Homes (medv)")


#logistic
# Create a binary outcome variable
Boston$medv_binary <- ifelse(Boston$medv > 25, 1, 0)

# Fit the logistic regression model
logistic_model <- glm(medv_binary ~ rm, data = Boston, family = binomial)

# Summary of the model
summary(logistic_model)

# Plot the data and the logistic regression curve
ggplot(Boston, aes(x = rm, y = medv_binary)) +
  geom_point(alpha = 0.5) +
  stat_smooth(method = "glm", method.args = list(family = "binomial"), se = FALSE, col = "green") +
  labs(title = "Logistic Regression: High/Low Median Value vs. Rooms", x = "Average Number of Rooms (rm)", y = "High Median Value (medv_binary)")
