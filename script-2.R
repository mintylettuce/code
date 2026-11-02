library(tidyverse)

# Histogram of diamond carat weights

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1, boundary = 0, color = "white", fill = "steelblue") +
  labs(
    title = "Distribution of Diamond Carat Weights",
    subtitle = "Smaller diamonds are much more common, and counts drop sharply above 1.5 carats.",
    x = "Carat weight",
    y = "Number of diamonds",
    caption = "Source: ggplot2::diamonds (53,940 diamonds)"
  ) +
  theme_minimal()

print(hist_p)

ggsave(plot = hist_p, file = "diamonds.png")
