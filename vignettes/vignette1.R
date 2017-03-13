## ------------------------------------------------------------------------
m <- mtcars
t1 <- N741pkg::tbl.continuous(m,m$mpg,"Miles per Gallon")
t2 <- N741pkg::tbl.continuous(m,m$disp,"Engine Displacement")
t3 <- N741pkg::tbl.continuous(m,m$wt,"Car Weight")
t4 <- N741pkg::tbl.continuous(m,m$hp,"Horsepower")
t5 <- N741pkg::tbl.continuous(m,m$qsec,"1/4 mile time")
knitr::kable(rbind(t1,t2,t3,t4,t5),
             caption = "Table of Summary Stats for Numeric Variables in mtcars")

## ------------------------------------------------------------------------
# create grouped data.frame of m by cylinders
gm <- dplyr::group_by(m,cyl)
t1 <- N741pkg::tbl.cat(gm,gm$cyl)
knitr::kable(t1,
             caption = "Frequency Table for Number of Cylinders")

# create grouped data.frame of m by am
gm <- dplyr::group_by(m,am)
t1 <- N741pkg::tbl.cat(gm,gm$am)
knitr::kable(t1,
             caption = "Frequency Table for Transmission")

# create grouped data.frame of m by gear
gm <- dplyr::group_by(m,gear)
t1 <- N741pkg::tbl.cat(gm,gm$gear)
knitr::kable(t1,
             caption = "Frequency Table for Number of Forward Gears")

## ---- fig.show='hold'----------------------------------------------------
plot(1:10)
plot(10:1)

## ---- echo=FALSE, results='asis'-----------------------------------------
knitr::kable(head(mtcars, 10))

