#The function makeVector stores the value of a vector. It also contains 4 additional
#functions (get, set, setmean, getmean) that are implemented by the "cachemean" function.
#The mean of the vector will not be calculated until called through the cachemean function,
#upon which the value will be cached for future use.

makeVector <- function(x = numeric()){
	m <- NULL

	# set and cache the value of the vector
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function()x

	#calculate and cache the mean of the vector

	setmean <- function(mean) m <<- mean
	getmean <- function() m
	list(set = set, get = get,
		setmean = setmean, getmean = getmean)
}