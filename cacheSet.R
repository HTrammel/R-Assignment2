cacheSet <- function(x = NULL) {
    cache1 <- x
    getfunction <- function() cache1
    setfunction <- function(y = NULL) {
        cache1 <<- y 
    }
    list(get = getfunction, set = setfunction)
}