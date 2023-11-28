require("viridis")
require("readr")

light <- c("#F2F2F2", sub("FF$", "", viridis(4, begin=0.7, direction=-1, option = "G")))
dark <- c("#282C34", sub("FF$", "", viridis(4, begin=0.3, end=.8, direction=1, option = "G")))

out <- data.frame(
  palette = rep(c("light", "dark"), c(length(light), length(dark)))
  , step = 1:5
  , color = sub("#", "", c(rev(light), rev(dark)))
)

write_csv(out, file = "viridis.csv")
