## ------------------------------------------------------------------------
library(N741pkg)
a <- runif(10,0,1)
b <- c("a","b","c","d","a","a","b","b","c","c")
x <- data.frame(a,b)
c <- c("blue","blue","blue","blue","red",
       "green","green","green","black","orange")
d <- c(2,40,3,NA,5,1,2,4,3,NA)
x <- data.frame(a,b,c,d)

knitr::kable(x)

t <- N741pkg::tbl.continuous(x,x$d,"label ddd")
knitr::kable(t)

## ------------------------------------------------------------------------
gx <- dplyr::group_by(x,c)
t <- N741pkg::tbl.cat(gx,gx$c)
knitr::kable(t)

gx <- dplyr::group_by(x,as.factor(d))
t <- N741pkg::tbl.cat(gx,gx$d)
knitr::kable(t)


## ---- fig.show='hold'----------------------------------------------------
plot(1:10)
plot(10:1)

## ---- echo=FALSE, results='asis'-----------------------------------------
knitr::kable(head(mtcars, 10))

