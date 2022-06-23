####╔═════      ═════╗####
####💠 Project Init 💠####
####╚═════      ═════╝####

is_installed <- \(pkg) suppressMessages({require(pkg, quietly = TRUE, warn.conflicts = FALSE, character.only = TRUE)})

if (!is_installed("here")) {install.packages("here"); require(here, quietly = TRUE)}

if (is_installed("rlang") && utils::compareVersion(utils::packageVersion("rlang") |> as.character(), "1.0.0") >= 0) rlang::global_entrace()