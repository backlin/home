.First <- function()
{
    options(repos = "https://www.stats.bris.ac.uk/R/")
    if(interactive()){
        # Settings specific to an interactive session
        tryCatch(source("~/.Rinteractive"), error=print)

        # Settings specific to the local machine
        if(file.exists("~/.Rpatches"))
            tryCatch(source("~/.Rpatches"), error=print)

        if(!is.na(Sys.getenv("RSTUDIO", unset = NA))) {
          # Settings specific to RStudio
        } else {
          # Settings specific to non-RStudio R, e.g. the terminal
          tryCatch(source("~/.RnonRstudio"), error=print)
        }
    }
}

