library(tidyverse)


View(savant_data_1_)
glimpse(savant_data_1_)

?filter
filter(savant_data_1_, ba >= 0.330)
ba_good <- filter(savant_data_1_, ba >= 0.330)
View(ba_good)

ba_better <- filter(ba_good, xba >= 0.300)
View(ba_better)

launch_speedconv <- mutate(savant_data_1_, kmh = 1.60934 *launch_speed)
glimpse(launch_speedconv)

launch_speedconv <- savant_data_1_ %>%
  mutate(kmh = 1.60934 *launch_speed)

# Data viz with ggplot2

ggplot(savant_data_1_, aes(x = ba)) +
  geom_freqpoly() +
  labs(x = "Batting Average")

ggplot(savant_data_1_, aes(x = ba)) +
  geom_dotplot() +
  geom_freqpoly() +
  labs(x = "Batting Average")

ggplot(savant_data_1_, aes(x = ba,
                           y = xba,
                           color = player_id)) + 
  geom_point() +
  geom_smooth(method = "lm")

library(tidyverse)
