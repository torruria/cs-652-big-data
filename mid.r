# Linear regression plot
linear_predicted <- predict(linear_model)
plot(iris_data$SepalWidthCm, linear_predicted, main = "Linear Regression: Actual vs. Predicted", xlab = "Actual Sepal Width (cm)", ylab = "Predicted Sepal Width (cm)")
abline(0, 1, col = "red")  # Add a diagonal line for reference

# Polynomial regression plot
polynomial_predicted <- predict(polynomial_model)
plot(iris_data$SepalWidthCm, polynomial_predicted, main = "Polynomial Regression: Actual vs. Predicted", xlab = "Actual Sepal Width (cm)", ylab = "Predicted Sepal Width (cm)")
abline(0, 1, col = "red")  # Add a diagonal line for reference

# Logistic regression plot
# First, we need to generate predicted probabilities
logistic_predicted_prob <- predict(logistic_model, type = "response")

# Now, let's create a confusion matrix plot
library(ggplot2)
library(caret)
confusion_matrix <- confusionMatrix(ifelse(logistic_predicted_prob > 0.5, 1, 0), iris_data$Species_binary)

# Plot confusion matrix
ggplot(data = as.data.frame(confusion_matrix$table), aes(x = Reference, y = Prediction, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), vjust = 1) +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Logistic Regression: Confusion Matrix", x = "Predicted", y = "Actual")
