#-----------------------------------------------------
## These two functions cache the inverse of a matrix for future use.  
## Usage:  The "makeCacheMatrix" function must be called first, but 
##         the cacheSolve is used for subsequent inversions.  
#-----------------------------------------------------

## Stores a copy of the inverse of matrix "x". Used by cacheSolve function/
makeCacheMatrix <- function(x = matrix()) {
    cached_inversion <- NULL  
    set <- function(y) {
        x <<- y           
        cached_inversion <<- NULL  
    }
    get <- function() {
        return (x)       
    }
    setInverse <- function(new_inversion) {
        cached_inversion <<- new_inversion
    }
    getInverse <- function() {
        return (cached_inversion)
    }
    list( set = set
        , get = get
        , setInverse = setInverse
        , getInverse = getInverse)
}

