#======================#
#### Project Config ####
#======================#

cat(main("\n[CONFIG] Loading Project Configs ...\n"))

config <- config::get()
secret <- config::get(file = "secret.yml")

options(
  contrasts = c("contr.sum", "contr.poly")
)