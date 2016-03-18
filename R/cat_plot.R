#
# CatterPlots
#
# Copyright (c) 2016 David L Gibbs
# email: gibbsdavidl@gmail.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


catplot <- function(xs, ys, size=0.1, catmode=1, title="") {
	require(png)
	data(cats)

	plot(x=xs, y=ys, col=0, xaxt="n", yaxt="n")
	title(main=title)
	par(usr=c(0,1,0,1))
	axis(side=1, at=seq(1/length(xs),1.0,1/length(xs)), labels=sort(xs))
	axis(side=2, at=seq(1/length(xs),1.0,1/length(xs)), labels=sort(ys))

	img <- catdat[[catmode]]
	dims<-dim(img)[1:2] #number of x-y pixels for the img (aspect ratio)
  AR<-dims[1]/dims[2]

	xscale <- xs + (-min(c(0,xs)))
	yscale <- ys + (-min(c(0,ys)))
	xscale <- xscale/max(xscale)
	yscale <- yscale/max(yscale)

	rasterImage(img, xscale-(size/2), yscale-(size/2), xscale+(size/2), yscale+(size/2), interpolate=TRUE)
}

# catplot(xs=abs(rnorm(10)), ys=abs(rnorm(10)), size=0.15, catmode=1, title="Cat Plot 1")
