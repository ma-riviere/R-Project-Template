####╔═══════      ═══════╗####
####💠 Project Packages 💠####
####╚═══════      ═══════╝####

project_repos <- c(
  # EasyStats = "https://easystats.r-universe.dev",
  # Stan = "https://mc-stan.org/r-packages/",
  CRAN = "https://cloud.r-project.org/"
)

base_pkgs <- c("renv", "here", "config", "rlang", "fs", "knitr", "rmarkdown", "crayon", "usethis", "glue", "magrittr", "todor", "pipebind")

project_pkgs <- c(
  ### Pre-requisites
  
  ### Data wrangling
  "readr",
  "tibble",
  "stringr",
  "purrr",
  "tidyr",
  "dplyr",
  
  ### Model fitting
  
  ### Model analysis
  
  ### Visualizations
  "ggplot2",
  "ggtext",
  "patchwork",

  ### Publishing
  "gt",
  "gtExtras",
  
  ### Misc
  "styler", 
  "miniUI", 
  "gtools"
)