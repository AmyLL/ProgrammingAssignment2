#The function makeCacheMatrix stores a matrix and contains 4 additional
#functions (get, set, setInverse, getInverse) that are implemented by the "cacheSolve" function.
#The inverse of the matrix will not be calculated until called through the cacheSolve function,
#upon which the value will be cached for future use.

#NOTE: Matrix must be invertible i.e. square 

makeCacheMatrix <- function(x = matrix()){
	inv <- NULL

	# set and cache the matrix
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function()x

	#calculate and cache the inverse of the matrix

	setInverse <- function(solve) inv <<- solve
	getInverse <- function() solve
	list(set = set, get = get,
		setInverse = setInverse, getInverse = getInverse)
}