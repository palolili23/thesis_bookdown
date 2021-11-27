library(tidyverse)
library(rio)
library(here)
library(readxl)
library(magrittr)

itt_dementia <- read_xlsx(here::here("figs", "SurvivalCurves_4may19.xlsx"), sheet = 1) %>% 
  mutate(effect = "Dementia")

itt_demdeath <- read_xlsx(here::here("figs", "SurvivalCurves_4may19.xlsx"), sheet = 2) %>% 
  mutate(effect = "Dementia or Death")

itt <- itt_dementia %>% bind_rows(itt_demdeath)

itt_long <- itt %>% 
  pivot_longer(
    cols = c(3:4),
    names_to = "Treatment Arm",
    values_to = "Risk"
  ) %>% 
  mutate(`Treatment arm` = as_factor(`Treatment Arm`))
  


itt_plot <- itt_long %>% 
  ggplot(aes(month, Risk, group = `Treatment Arm`)) +
  geom_line(aes(color = `Treatment Arm`), size = 1) +
  scale_color_manual(values = c("#011A5E", "#e4a803")) +
  facet_wrap(.~effect) + 
  labs(
    color = NULL,
    y = NULL,
    x = "Months of follow-up") +
  theme_bw(base_family = "serif") +
  theme(legend.position = "bottom",
        legend.text = element_text(size=12)) +
  theme(strip.text.x = element_text(size = 11),
        # strip.background = element_blank(),
        strip.background = element_rect(fill=NA),
        axis.text=element_text(size=12),
        axis.title=element_text(size=12))

ggsave(filename = "statinsf2.png",
       itt_plot,
       path = here::here("figs"),
       device = "png",
       width = 8,
       height = 4.1,
       dpi = "retina")

ggsave(filename = "statinsf2.pdf",
       itt_plot,
       path = here::here("figs"),
       device = "pdf",
       width = 8,
       height = 4.1,
       dpi = "retina")

# PP effect ---------------------------------------------------------------


pp_dementia <- read_xlsx(here::here("figs", "SurvivalCurves_4may19.xlsx"), sheet = 3) %>% 
  mutate(effect = "Dementia")
pp_demdeath <- read_xlsx(here::here("figs", "SurvivalCurves_4may19.xlsx"), sheet = 4) %>% 
  mutate(effect = "Dementia or Death")

pp <- pp_dementia %>% bind_rows(pp_demdeath)

pp_long <- pp %>% 
  pivot_longer(
    cols = c(3:4),
    names_to = `Treatment Arm`,
    values_to = "Risk"
  ) %>% 
  mutate(`Treatment arm` = as_factor(`Treatment Arm`))





pp_plot <- pp_long %>% 
  ggplot(aes(month, Risk, group = `Treatment Arm`)) +
  geom_line(aes(color = `Treatment Arm`), size = 1) +
  scale_color_manual(values = c("#011A5E", "#e4a803")) +
  facet_wrap(.~effect) + 
  labs(
    color = NULL,
    y = NULL,
    x = "Months of follow-up") +
  theme_bw(base_family = "serif") +
  theme(legend.position = "bottom",
        legend.text = element_text(size=12)) +
  theme(strip.text.x = element_text(size = 11),
        # strip.background = element_blank(),
        strip.background = element_rect(fill=NA),
        axis.text=element_text(size=12),
        axis.title=element_text(size=12))

ggsave(filename = "statinsf3.png",
       pp_plot,
       path = here::here("figs"),
       device = "png",
       width = 8,
       height = 4.1,
       dpi = "retina")

ggsave(filename = "statinsf3.pdf",
       pp_plot,
       path = here::here("figs"),
       device = "pdf",
       width = 8,
       height = 4.1,
       dpi = "retina")
