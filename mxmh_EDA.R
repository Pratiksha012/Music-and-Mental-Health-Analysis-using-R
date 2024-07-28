setwd("/Users/pratiksha/Desktop/Sem7/Practical Techniques for Big Data Processing/Assignment-1/")

install.packages("readr")
library(readr)

music_mental_health <- read.csv("mxmh.csv")
head(music_mental_health)

library(ggplot2)
library(dplyr)

head(music_mental_health)

str(music_mental_health)

ggplot(age_distribution, aes(x = Age, y = Count)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  labs(title = "Distribution of Age Groups", x = "Age", y = "Count")

ggplot(music_mental_health, aes(x = Age, y = Hours.per.day)) +
  geom_point(color = "darkblue", alpha = 0.6) +
  theme_minimal() +
  labs(title = "Age vs. Hours Spent Listening to Music per Day", x = "Age", y = "Hours per Day")

ggplot(classical_frequency, aes(x = Frequency..Classical., y = Count)) +
  geom_bar(stat = "identity", fill = "pink") +
  theme_minimal() +
  labs(title = "Frequency of Listening to Classical Music", x = "Frequency", y = "Count")

ggplot(common_genre, aes(x = reorder(Fav.genre, -Count), y = Count)) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  theme_minimal() +
  labs(title = "Most Common Genre of Music", x = "Genre", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

correlation_analysis <- music_mental_health %>%
  select(Hours.per.day, Anxiety, Depression, Insomnia, OCD) %>%
  cor(use = "complete.obs")

print(correlation_analysis)

impact_genre <- music_mental_health %>%
  group_by(Fav.genre, Music.effects) %>%
  summarise(Count = n())

ggplot(impact_genre, aes(x = Fav.genre, y = Count, fill = Music.effects)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(title = "Impact of Music on Mental Health by Favorite Genre", x = "Favorite Genre", y = "Count", fill = "Music Effects") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

average_time <- music_mental_health %>%
  summarise(Average_Hours = mean(Hours.per.day, na.rm = TRUE))

print(average_time)


working_music <- music_mental_health %>%
  group_by(While.working) %>%
  summarise(Count = n())

ggplot(working_music, aes(x = While.working, y = Count)) +
  geom_bar(stat = "identity", fill = "orange") +
  theme_minimal() +
  labs(title = "Preference for Listening to Music While Working", x = "Listening While Working", y = "Count")

fav_genre_summary <- music_mental_health %>%
  group_by(Fav.genre) %>%
  summarise(Count = n())

ggplot(fav_genre_summary, aes(x = "", y = Count, fill = Fav.genre)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(title = "Distribution of Favorite Music Genres", fill = "Favorite Genre") +
  theme(legend.position = "right")
ggplot(music_mental_health, aes(x = Fav.genre, y = Hours.per.day)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  theme_minimal() +
  labs(title = "Hours Spent Listening to Music per Day by Favorite Genre", x = "Favorite Genre", y = "Hours per Day") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
