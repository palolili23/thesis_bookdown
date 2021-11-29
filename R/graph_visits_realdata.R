library(tidyverse)
library(lubridate)

safe_pal <- c("#117733", "#332288", "#AA4499", 
              "#44AA99", "#999933", "#882255")

data <- data.frame(
  id = 1:12,
  content = c("Date of death or last date of contact", "Daily data","n=7983","n=6315", "n=4797", "n=3550 ", "n=2147", "n=3011", "n=2468", "n=1893", "n=3932", "n=3122"),
  xmin = c("1989-07-01", "1991-01-01","1989-07-05","1993-09-06", "1997-03-19", "2002-01-10", "2008-12-12", "1999-02-26", "2002-01-16", "2008-12-16", "2006-02-13", "2010-09-29"),
  xmax = c("2014-12-31", "2014-12-31","1993-06-17", "1995-12-29", "1999-12-16", "2005-10-06", "2014-01-27", "2001-12-18", "2005-12-31", "2012-05-09", "2008-11-23", "2014-06-05"),
  group = c(rep("Vital Status", 1), rep("Pharmacy \n registry", 1), rep("RS-I", 5), rep("RS-II", 3), rep("RS-III", 2)),
  wave = c(NA, NA, "Wave 1", "Wave 2", "Wave 3", "Wave 4",
           "Wave 5", "Wave 1", "Wave 2", "Wave 3", "Wave 1", "Wave 2"))

data <- data %>% filter(group != "RS-III") %>% 
  mutate(xmin = ymd(xmin),
         xmax = ymd(xmax))

plot <- data %>% 
  ggplot(aes(x = xmin, fct_rev(as_factor(group)))) +
  geom_segment(aes(xend = xmax, yend = fct_rev(as_factor(group)),
                   color = as_factor(wave)), 
               size = 12, alpha = 0.4) +
  scale_color_manual(values = safe_pal) +
  theme_minimal(base_family = "serif") +
  labs(
    y = NULL,
    x = 'Year',
    color = NULL) +
  theme(
        legend.position = "none",
        axis.line = element_line(colour = "black"),
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        strip.text.x = element_text(size = 12),
        strip.background = element_rect(fill=NA),
        axis.text=element_text(size=12),
        axis.title=element_text(size=1)
        ) +
  scale_x_date(date_breaks = "5 years", date_labels = "%Y") +
  geom_text(aes(label = content),
            family = "serif",
            size = 3.5,
            hjust = -0.08)

plot  

ggsave(filename = "rs.png",
       plot = plot,
       path = here::here("figs"),
       device = "png",
       width = 8,
       height = 4.1,
       dpi = "retina")
