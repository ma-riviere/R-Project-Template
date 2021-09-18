#======================#
#### Project Config ####
#======================#

cat(main("\n[CONFIG] Loading Project Configs ...\n"))

config <- config::get()

options(
  contrasts = c("contr.sum", "contr.poly")
)