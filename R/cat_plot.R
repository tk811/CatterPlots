

#utility function for embedding png images at specified fractional sizes in R plots
#places the logo centred on a specified fraction of the the usr space,
#and sizes appropriately (respects aspect ratio)
logoing_func<-function(logo, x, y, size){
  dims<-dim(logo)[1:2] #number of x-y pixels for the logo (aspect ratio)
  AR<-dims[1]/dims[2]
  par(usr=c(0, 1, 0, 1))
  rasterImage(logo, x-(size/2), y-(AR*size/2), x+(size/2), y+(AR*size/2), interpolate=TRUE)
}


catplot <- function(xs, ys, size, catmode, title) {
	require(png)
	data(cats)
	plot(x=xs, y=ys, col=0)
	sapply(1:length(xs), function(i) logoing_func(catdat[[catmode]], x=xs[i]/max(xs), y=ys[i]/max(ys), size=size))
	title(main=title)
}

# catplot(xs=abs(rnorm(10)), ys=abs(rnorm(10)), size=0.15, catmode=1, title="Cat Plot 1")
