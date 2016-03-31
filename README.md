# CatterPlots
Your source for cat themed plots.

<img src="https://github.com/Gibbsdavidl/CatterPlot/blob/master/examples/catplot_ex_4.png" width="500">

Go ahead, treat yourself! There's over 10 cat models now!

Well, exactly 11, actually. Eleven types of cats.

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
x <- -10:10
y <- -x^2 + 10
purr <- catplot(xs=x, ys=y, cat=3, catcolor=c(0,1,1,1))
cats(purr, -x, -y, cat=4, catcolor=c(1,0,1,1))
```
