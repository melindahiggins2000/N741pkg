#' Table of frequencies and percents for a categorical variable.
#'
#' Create a table of summary statistics
#' for a categorical variable in a data frame.
#'
#' @param gdf a grouped data.frame from dplyr::group_by().
#' @param var a vector in a data.frame df$var.
#' @return \code{t} the frequency and percents table.
#' @examples
#' a <- runif(10,0,1)
#' b <- c("a","b","c","d","a","a","b","b","c","c")
#' c <- c("a",NA,"c","d","a","a","b","b","c",NA)
#' x <- data.frame(a,b,c)
#' gb <- dplyr::group_by(x,b)
#' gc <- dplyr::group_by(x,c)
#' tbl.cat(gb,gb$b)
#' tbl.cat(gc,gc$c)
tbl.cat <- function(gdf,var){
  ss <- length(var)
  t <- dplyr::summarise(gdf,
                        freq = n(),
                        pct = n()*100/ss)
  return(t)
}
