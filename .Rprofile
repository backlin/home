.First <- function()
{
    options(repos="http://ftp.sunet.se/pub/lang/CRAN")
    if(interactive()){
        require("utils")
        loadhistory()
        source("~/.Rinteractive")
        if(file.exists("~/.Rpatches"))
            source("~/.Rpatches")
    }
}

