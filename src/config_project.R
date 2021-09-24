#======================#
#### Project Config ####
#======================#

cat(main("\n[CONFIG] Loading Project Configs ...\n"))

config <- config::get()
secret <- config::get(file = "secret.yml")

options(
  contrasts = c("contr.sum", "contr.poly"),
  ggplot2.discrete.colour = "viridis_d",
  ggplot2.discrete.fill = "viridis_d",
  ggplot2.continuous.colour = "viridis",
  ggplot2.continuous.fill = "viridis"
)