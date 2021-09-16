#=============================#
#### Global project config ####
#=============================#

if(!"renv" %in% utils::installed.packages()) install.packages("renv")
if(!"here" %in% utils::installed.packages()) install.packages("here")

if(is.null(renv::project())) renv::init(project = here::here(), bare = TRUE)

# TODO: usethis::use_blank_slate(scope = "project") <- only once ? no prompt ? make function ?

shell.exec(here::here("update_commons.bat"))

source(here::here("src", "common", "packman.R"), echo = F)
init_base_packages()

source(here::here("src", "common", "utils.R"), echo = F)

source(here::here("src", "common", "config.R"), echo = F)

source(here::here("src", "common", "theme.R"), echo = F)

source(here::here("src", "packages.R"), echo = F)

source(here::here("src", "data.R"), echo = F)