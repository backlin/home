.First <- function()
{
    options(repos="http://ftp.sunet.se/pub/lang/CRAN")
    if(interactive()){
        ow <- getOption("warn")
        if(file.exists("~/Documents/R/my_patches.R"))
            source("~/Documents/R/my_patches.R")
        options(warn=ow)
        rm(ow)
        source("~/Documents/R/christofers_startup.R")
        cat("\nLoaded Christofer's custom functions, happy R:ing!\n\n")
    }
}

