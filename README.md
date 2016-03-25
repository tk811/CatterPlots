# CatterPlots
Did you ever wish you could make scatter plots with cat shaped points?  Now you can!

<img src="https://github.com/Gibbsdavidl/CatterPlot/blob/master/examples/cat_lines_2.png" width="300">

Go ahead, treat yourself! There's over 10 cat models now!

To install, either:
```
library(devtools)
install_github("Gibbsdavidl/CatterPlots")
```
Or git clone the repo and then install using:
```
R CMD INSTALL CatterPlots
```

In R:

```
library(CatterPlots)
x <- 1:5
y <- 1:5
obj <- catplot(x,y, size=0.25, 0.1, type="line", cat=10, linecolor=3, catcolor=c(0,0,0,1))
cats(obj, x*0.5, y*0.5, cat=5, catcolor=c(1,1,0,1))
```
