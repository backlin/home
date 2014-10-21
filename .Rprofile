.First <- function()
{
    options(repos="http://ftp.sunet.se/pub/lang/CRAN")
    if(interactive()){
        require("utils")
        loadhistory()
        cols <- Sys.getenv("COLUMNS")
        if(nzchar(cols)) options(width=as.integer(cols))
        source("~/.Rinteractive")
        if(file.exists("~/.Rpatches"))
            source("~/.Rpatches")
    }
}

