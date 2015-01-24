#The function cachemean implements the list of functions available in the function makeVector. 
#The results of the makeVector function are passed to the cachemean function and the mean of the vector
#is returned. If the mean of the vector has already been calculated, the function will retrieve the 
#value in the cache rather that recalculating the value.

#x = results of the makeCacheMatrix function	
cacheSolve <- function(x,...){
	# attempt to retrieve inverted(solved) matrix, if found will return the cached value
	inv <- x$getInverse()			
	if(!is.null(inv)){
		message("Getting cached data")
		return(inv)
	}
	# get cached matrix from the makeCacheMatrix function and solve
	data <- x$get()
	inv <- solve(data,...)
	x$setInverse(inv)
	inv
}