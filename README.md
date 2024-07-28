# Music-and-Mental-Health-Analysis-using-R

**Course:** 18CSC403 / Practical Techniques for Big Data Processing  
**Assignment:** Basics of R and Exploratory Data Analysis (EDA)  
**Roll Number:** CB.SC.I5DAS21049  
**Name:** Pratiksha Cauvery K P

## Project Overview

This project involves practicing the basics of R and performing Exploratory Data Analysis (EDA) on the `mxmh.csv` dataset from Kaggle, which focuses on the relationship between music preferences and mental health.

## Analysis Questions

1. What is the distribution of different age groups in the dataset?
2. How does the frequency of listening to music vary across different age groups?
3. What is the most common genre of music preferred by people in the dataset?
4. Is there a correlation between the time spent listening to music and self-reported mental health status?
5. How does the impact of music on mental health differ between genres?
6. What is the average time spent listening to music per day?
7. How does the preference for listening to music while working vary?
8. How do stress levels vary with different genres of music?
9. What is the distribution of music preference based on mental health status?
10. Does music actually have a significantly positive impact on a person’s life?

## Dataset

The dataset used for this analysis is `mxmh.csv` from Kaggle. It includes the following columns:

- Timestamp
- Age
- Primary streaming service
- Hours per day
- While working
- Instrumentalist
- Composer
- Favorite genre
- Exploratory
- Foreign languages
- BPM
- Frequency of listening to various music genres (Classical, Country, EDM, Folk, Gospel, Hip hop, Jazz, K-pop, Latin, Lofi, Metal, Pop, R&B, Rap, Rock, Video game music)
- Self-reported mental health status (Anxiety, Depression, Insomnia, OCD)
- Music effects
- Permissions

## Prerequisites

Ensure you have R installed on your system. Additionally, you need the following R packages:

```r
install.packages("readr")
install.packages("dplyr")
install.packages("ggplot2")
