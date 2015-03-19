cacheGetSet <- function(cache, x = NULL, ...) {
    cache2 <- cache$get()
    message("Checking cache...")
    if(is.null(cache2)) {
        message("No previously cached value.")
    } else { 
        print(cache2)
    }
    message("Setting new cached value...")
    cache$set(x)
    print(cache$get())
    message("Finished.")       
}