# CatterPlot
Did you ever wish you could make scatter plots with cat shaped points?  Now you can!

Go ahead, treat yourself! There's over 10 cat models now!

To install, either:
```
library(devtools)
install_github("Gibbsdavidl/CatterPlot")
```
Or git clone the repo and then install using:
```
R CMD INSTALL CatterPlot
```

In R:

```
library(CatterPlot)
x <- 1:5
y <- 1:5
catplot(x,y, size=0.25, 0.1, type="line", cat=10, linecolor=3, catcolor=c(0,0,0,1))
```

NEW cat modes coming soon!
