tbl.cat <- function(gdf,var){
  #gdf <- df %>%
  #  group_by(var)
  ss <- 10
  t1 <- gdf %>%
    summarise(freq = n(),
              pct = n()*100/ss)
  return(t1)
}


