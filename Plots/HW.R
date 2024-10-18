#link:https://www.kaggle.com/code/rtatman/welcome-to-data-science-in-r/notebook

melb <- read.csv('C:/RStudio_BetyaevILya/Plots/melb_data.csv')

ggplot(melb, aes(x = Price)) +
  geom_histogram(binwidth = 50000, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Property Prices", x = "Price", y = "Count") +
  theme_minimal()


