# script "00-ploder_function.R"
# 
# "ploder" is patryk's loader for R packages
ploder <- function( needed = c("tidyverse", "lubridate")){
    for( i in needed ) {
        if( !require( i , character.only = TRUE, quietly = TRUE )) {
            install.packages( i )
            require( i , character.only = TRUE )
        }
    }
}

# usage:  
#  * ploder()
#  * ploder(needed)
#  * ploder(c( "tidyverse", "lubridate"))
#  * etc...
#

