tbl.continuous <- function(df,var,l){
  t <- df %>%
    summarise(item = l,
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
