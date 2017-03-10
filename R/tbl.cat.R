#' Table of frequencies and percents for a categorical variable.
#'
#' Create a table of summary statistics
#' for a categorical variable in a data frame.
#'
#' @param gdf a grouped data.frame from dplyr::group_by().
#' @param var a vector in a data.frame df$var.
#' @return \code{t1} the summary statistics table.
#' @examples
#' a <- runif(10,0,1)
#' b <- c("a","b","c","d","a","a","b","b","c","c")
#' x <- data.frame(a,b)
#' tbl.cat(x,x$b)
tbl.cat <- function(gdf,var){
  #gdf <- df %>%
  #  group_by(var)
  ss <- length(var)
  t1 <- gdf %>%
    summarise(freq = n(),
              pct = n()*100/ss)
  return(t1)
}


