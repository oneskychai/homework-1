# Load library and data
library(tidyverse)
load("rdas/murders.rda")

# Make plot
murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()

# Save plot  
ggsave("figs/barplot.png")