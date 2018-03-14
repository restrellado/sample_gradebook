# Create a gradebook dataset as an example

library(tidyverse) 

# Creates random quiz scores 
#------------------------------------------------------------------------------
make_score <- function(min, max, n) {
  # Creates random quiz scores 
  #   Args: 
  #     min: lowest possible quiz score 
  #     max: highest possible quiz score 
  #     n:   number of quiz scores 
  #   Returns: numeric vector
  sample(c(1:100), n, replace = TRUE)
}


# Make dataset 
#------------------------------------------------------------------------------
gb <- tibble(
  name = paste0("student_", c(1:25)), 
  gender = sample(c("f", "m"), 25, replace = TRUE),
  quiz_1 = make_score(0, 100, 25), 
  quiz_2 = make_score(0, 100, 25),
  quiz_3 = make_score(0, 100, 25),
  quiz_4 = make_score(0, 100, 25),
  quiz_5 = make_score(0, 100, 25)
)