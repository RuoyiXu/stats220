library(tidyverse)

logged_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTd4RWFHtT-Nv3ncuh5V9wjgXJOOyWrOIiHYnBvaNGIxcTW2OC9OXl_iE1dVt44rH5kHtkeBw_GXnP7/pub?output=csv")

latest_data <- logged_data %>%
  rename(
    minutes = `How many minutes did I spend on phone entertainment?`,
    activity = `What was my main activity?`,
    mood = `What was my mood at that time?`
  )

mean(latest_data$minutes)
max(latest_data$minutes)
head(latest_data)

ggplot(latest_data, aes(x = activity)) +
  geom_bar()

ggplot(latest_data, aes(x = mood)) +
  geom_bar()


mean_minutes <- mean(latest_data$minutes)
max_minutes <- max(latest_data$minutes)

ggplot(latest_data, aes(x = activity)) +
  geom_bar() +
  labs(
    title = "Main phone entertainment activity",
    x = "Activity",
    y = "Count"
  )

ggplot(latest_data, aes(x = mood)) +
  geom_bar() +
  labs(
    title = "Mood during phone entertainment",
    x = "Mood",
    y = "Count"
  )

