# CatterPlot
Did you ever wish you could make scatter plots with cat shaped points?  Now you can!

Go ahead, treat yourself! There's over 10 cat models now!

git clone the repo and install using:

```
R CMD INSTALL CatterPlot
```

In R:

```
library(CatterPlot)
x <- 1:10
y <- 1:10
catplot(x,y,0.1)
catplot(x,y^2,0.1)
catplot(x^2,y,0.1)
```

NEW cat modes coming soon!
