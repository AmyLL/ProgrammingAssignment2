#The function cachemean implements the list of functions available in the function makeVector. 
#The results of the makeVector function are passed to the cachemean function and the mean of the vector
#is returned. If the mean of the vector has already been calculated, the function will retrieve the 
#value in the cache rather that recalculating the value.

#x = results of the makeVector function	
cachemean <- function(x,...){
	# attempt to retrieve mean, if found will return the cached value
	m <- x$getmean()			
	if(!is.null(m)){
		message("Getting cached data")
		return(m)
	}
	# get cached vector data from the makeVector function and calculate the mean
	data <- x$get()
	m <- mean(data,...)
	x$setmean(m)
	m
}