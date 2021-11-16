#======================#
#### Project Config ####
#======================#

cat(main("\n[CONFIG] Loading Project Configs ...\n"))

config <- config::get()
secret <- config::get(file = "secret.yml")

## TODO: explore color palettes packages (lisa, ...)

# my_colors <- c("#777777", "#ff6000")
# my_palette_d <- list(my_colors, scales::viridis_pal()(2), scales::viridis_pal()(5), scales::viridis_pal()(10))

options(
  contrasts = c("contr.sum", "contr.poly"),
  ggplot2.discrete.colour = \() scale_color_viridis_d(), # my_palette_d
  ggplot2.discrete.fill = \() scale_fill_viridis_d(), # my_palette_d
  ggplot2.continuous.colour = \() scale_color_viridis_c(),
  ggplot2.continuous.fill = \() scale_fill_viridis_c(),
  ggplot2.binned.colour = \() scale_color_viridis_b(),
  ggplot2.binned.fill = \() scale_fill_viridis_b()
)