#Step 1

library(dplyr)
# Example dataset (replace with actual weather data)
weather_data <- data.frame(
  Date = as.Date('2023-01-01') + 0:6,
  Temperature = c(10, 12, 15, 14, 13, 11, 10),
  Humidity = c(85, 80, 82, 78, 79, 81, 86)
)
# Filter data for a specific date range and calculate average temperature
filtered_data <- weather_data %>%
  filter(Date >= as.Date('2023-01-02') & Date <= as.Date('2023-01-06')) %>%
  summarize(Average_Temperature = mean(Temperature))
print(filtered_data)

library(ggplot2)
# Line plot for temperature trends
ggplot(weather_data, aes(x = Date, y = Temperature)) +
 geom_line(color = "blue") +
 geom_point(color = "darkblue") +
 labs(title = "Temperature Trends Over Time", x = "Date", y = "Temperature (°C)") +
 theme_minimal()
# Bar plot for humidity levels
ggplot(weather_data, aes(x = Date, y = Humidity, fill = Humidity)) +
 geom_bar(stat = "identity") +
 labs(title = "Humidity Levels", x = "Date", y = "Humidity (%)") +
 theme_minimal()

#Step 2

library(ggplot2)
# Line plot for temperature trends
ggplot(weather_data, aes(x = Date, y = Temperature)) +
  geom_line(color = "blue") +
  geom_point(color = "darkblue") +
  labs(title = "Temperature Trends Over Time", x = "Date", y = "Temperature (°C)") +
  theme_minimal()
# Bar plot for humidity levels
ggplot(weather_data, aes(x = Date, y = Humidity, fill = Humidity)) +
  geom_bar(stat = "identity") +
  labs(title = "Humidity Levels", x = "Date", y = "Humidity (%)") +
  theme_minimal()

