

# CatterPlot!

catplot <- function(xs, ys, size=0.1, catmode=1, title="") {
	require(png)
	data(cats)
	plot(x=xs, y=ys, col=0)
	img <- catdat[[catmode]]
	rasterImage(img, x-(size/2), y-(AR*size/2), x+(size/2), y+(AR*size/2), interpolate=TRUE)
	title(main=title)
}

# catplot(xs=abs(rnorm(10)), ys=abs(rnorm(10)), size=0.15, catmode=1, title="Cat Plot 1")
