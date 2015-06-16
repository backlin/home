.First <- function()
{
    options(repos="http://ftp.sunet.se/pub/lang/CRAN")
    if(interactive()){
        require("utils")
        loadhistory()
        cols <- Sys.getenv("COLUMNS")
        if(nzchar(cols)) options(width=as.integer(cols))
        rm(cols)
        tryCatch(source("~/.Rinteractive"), error=print)
        if(file.exists("~/.Rpatches"))
            tryCatch(source("~/.Rpatches"), error=print)
    }
}

