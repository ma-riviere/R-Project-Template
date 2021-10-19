#======================#
#### Project Config ####
#======================#

cat(main("\n[CONFIG] Loading Project Configs ...\n"))

config <- config::get()
secret <- config::get(file = "secret.yml")

my_palettes_c <- list("viridis")
my_palettes_d <- list("viridis_d")

options(
  contrasts = c("contr.sum", "contr.poly"),
  ggplot2.discrete.colour = my_palettes_d,
  ggplot2.discrete.fill = my_palettes_d,
  ggplot2.continuous.colour = my_palettes_c,
  ggplot2.continuous.fill = my_palettes_c
)