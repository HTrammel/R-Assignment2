#-----------------------------------------------------


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    cached_inverse <- x$getInverse()
    
    if (!is.null(cached_inverse)) {
        # if 
        message ("getting cached data...")
        return (cached_inverse)
    } else {
        data <- x$get()
        cached_inverse <- solve(data)
        x$setInverse(cached_inverse)
        message ("setting cached data...")
        return(cached_inverse)
    }
}