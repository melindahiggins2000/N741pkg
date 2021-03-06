#' Table of summary stats for a numeric variable.
#'
#' Create a table of summary statistics
#' for a numeric variable in a data frame.
#'
#' @param df a data.frame.
#' @param var a vector in a data.frame df$var.
#' @param l a character vector for a label.
#' @return \code{t} the summary statistics table.
#' @examples
#' a <- runif(10,0,1)
#' b <- c("a","b","c","d","a","a","b","b","c","c")
#' d <- c(1.1,2.2,3.3,NA,5.5,6.6,NA,8.8,9.9,NA)
#' x <- data.frame(a,b,d)
#' tbl.continuous(x,x$a,"label for var a")
#' tbl.continuous(x,x$d,"label for var d")
tbl.continuous <- function(df,var,l){
  t <- dplyr::summarise(df,
                        item = l,
                        n = sum(!is.na(var)),
                        missing = sum(is.na(var)),
                        min = min(var, na.rm=TRUE),
                        avg = mean(var, na.rm=TRUE),
                        SD = sd(var, na.rm=TRUE),
                        median = median(var, na.rm=TRUE),
                        Q1 = quantile(var, 0.25, na.rm=TRUE),
                        Q3 = quantile(var, 0.75, na.rm=TRUE),
                        max = max(var, na.rm=TRUE))
  return(t)
}
