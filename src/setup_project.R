#=====================#
#### Project Setup ####
#=====================#

setup_project <- function(update = FALSE) {
  cat(main("\n>> [SETUP] Starting Project Setup ... <<\n"))
  
  source(here::here("src", "packages.R"), echo = F)
  
  init_project_packages(update = update)
  
  source(here::here("src", "config_project.R"), echo = F)
  
  source(here::here("src", "data.R"), echo = F)
  
  source(here::here("src", "viz.R"), echo = F)
  
  cat(main("\n>> [SETUP] Project Setup DONE ! <<\n"))
}