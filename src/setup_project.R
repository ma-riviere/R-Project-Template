#=====================#
#### Project Setup ####
#=====================#

cat("\n>> [SETUP] Starting Project Setup ... <<\n")

if(!"renv" %in% utils::installed.packages()) {install.packages("renv"); library(renv)}

if(is.null(renv::project())) {
  renv::init(project = here::here(), bare = TRUE, restart = FALSE)
  if(!file.exists(here::here("config.yml"))) {
    file.create(here::here("config.yml"))
    cat('default:\r  data: !expr here::here("data", "my_data.csv")\r', file = here::here("config.yml"))
  }
}

if(!file.exists(here::here("secret.yml"))) {
  file.create(here::here("secret.yml"))
  cat('default:\r  api_key: ""\r', file = here::here("secret.yml"))
}

update_submodules <- function() {
  if(Sys.info()[["sysname"]] == "Linux") {
    system(glue::glue("chmod +x {here::here('update_submodules.sh')}"), intern = TRUE)
    system("#!/bin/sh", intern = TRUE)
    system(here::here("update_submodules.sh"), intern = TRUE)
  }
  else if(Sys.info()[["sysname"]] == "Windows") system(here::here("update_submodules.bat"), intern = TRUE)
}

# TODO: usethis::use_blank_slate(scope = "project") <- only once ? no prompt ?

if(length(list.files(here::here("src", "common"))) == 0) update_submodules()

source(here::here("src", "common", "packman.R"), echo = F)
init_base_packages()

source(here::here("src", "common", "utils.R"), echo = F)

source(here::here("src", "common", "config_global.R"), echo = F)
global_config <- load_global_config()

source(here::here("src", "common", "theme.R"), echo = F)

#--------------------------------#
#### Project-specific scripts ####
#--------------------------------#

setup_project <- function(update = FALSE) {

  source(here::here("src", "packages.R"), echo = F)
  
  init_project_packages(update = update)
  
  source(here::here("src", "config_project.R"), echo = F)
  
  source(here::here("src", "data.R"), echo = F)
  
  source(here::here("src", "viz.R"), echo = F)
  
  cat(main("\n>> [SETUP] Project Setup DONE ! <<\n"))
}