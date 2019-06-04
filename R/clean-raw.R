library(tidyverse)
library(lubridate)
library(here)

kaggle <- read_rds(here("data-raw/competitions.rds")) %>% 
  separate(txt, c("title", "short_desc", "category", "prize", "teams_entered"), sep = "\\n\\n", remove = F)

kaggle_row_counts <- kaggle %>% 
  select(title, category) %>% 
  separate_rows(category, sep = "\\n") %>% 
  count(title) 

kaggle_row_counts %>% 
  ggplot(aes(n)) +
  geom_histogram()
  
# handle my case

case1 <- kaggle %>% 
  semi_join(kaggle_row_counts %>% filter(n == 2), by = "title") %>% 
  separate(category, c("category", "time_to_deadline"), sep = "\\n")

case2 <- kaggle %>% 
  semi_join(kaggle_row_counts %>% filter(n == 3), by = "title") %>% 
  separate(category, c("category", "time_to_deadline", "tags"), sep = "\\n")

case3 <- kaggle %>% 
  semi_join(kaggle_row_counts %>% filter(n == 4), by = "title") %>% 
  filter(title != "15.071x - The Analytics Edge (Spring 2015)") %>% 
  separate(category, c("category", "kernels_comp", "submission_details", "time_to_deadline"), sep = "\\n")

case4 <- kaggle %>% 
  filter(title == "15.071x - The Analytics Edge (Spring 2015)") %>% 
  separate(category, c("category", "time_to_deadline"), sep = "\\n") %>% 
  mutate(time_to_deadline = str_replace(time_to_deadline, "Limited", ""))

case5 <- kaggle %>% 
  semi_join(kaggle_row_counts %>% filter(n == 5), by = "title") %>% 
  separate(category, c("category", "kernels_comp", "submission_details", "time_to_deadline", "tags"), sep = "\\n")

kaggle_clean <- bind_rows(
  case1, case2, case3, case4, case5
)

# clean teams entered
kaggle_clean <- kaggle_clean %>% 
  extract(teams_entered, "teams_entered_numbers","([\\d,]+)") %>% 
  mutate(teams_entered = as.numeric(str_replace(teams_entered_numbers, ",", ""))) %>% 
  select(-teams_entered_numbers)

kaggle_clean <- kaggle_clean %>% 
  mutate(time_to_deadline = str_replace(time_to_deadline, "^a", "1"),
         time_to_deadline = str_replace(time_to_deadline, "to go", "togo"),
         time_to_deadline = str_replace(time_to_deadline, "Limited$", ""),
         time_to_deadline = str_replace(time_to_deadline, "Ongoing", NA_character_)) %>% 
  separate(time_to_deadline, c("number", "units", "direction"), sep = " ", remove = F) %>% 
  mutate(number = as.numeric(number))

.duration <- possibly(duration, otherwise = NA)
kaggle_clean <- kaggle_clean %>% 
  mutate( direction = if_else(direction == "togo", 1, -1),
          sec_to_deadline = map2_dbl(kaggle_clean$number, kaggle_clean$units, ~ .duration(.x, units = .y)),
          deadline = today() + direction * dseconds(sec_to_deadline),
          deadline = date(deadline)) %>% 
  select(-(time_to_deadline:direction), -sec_to_deadline)

kaggle_clean %>% 
  select(-txt) %>% 
  write_csv(here("data/kaggle_competitions.csv"))
