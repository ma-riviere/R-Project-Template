#=============================#
#### Global project config ####
#=============================#

cat("\n>> [INIT] Starting project setup ... <<\n")

if(!"renv" %in% utils::installed.packages()) {install.packages("renv"); library(renv)}
if(!"here" %in% utils::installed.packages()) {install.packages("here"); library(here)}

if(is.null(renv::project())) renv::init(project = here::here(), bare = TRUE)

# TODO: usethis::use_blank_slate(scope = "project") <- only once ? no prompt ?

if(length(list.files(here::here("src", "common"))) == 0) shell.exec(here::here("update_commons.bat"))

source(here::here("src", "common", "packman.R"), echo = F)
init_base_packages()

source(here::here("src", "common", "utils.R"), echo = F)

source(here::here("src", "common", "config.R"), echo = F)

source(here::here("src", "common", "theme.R"), echo = F)

source(here::here("src", "packages.R"), echo = F)

source(here::here("src", "data.R"), echo = F)