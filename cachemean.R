# cachemean.R
#-----------------------------------------------------
cachemean <- function(madeVector, ...) {
    
    local_mean <- madeVector$getmean()
    
    if(!is.null(local_mean)) {
        message("getting cached data")
        return(local_mean)
    }
    else {
        local_data <- madeVector$get()
        local_mean <- mean(local_data, ...)
        
        madeVector$setmean(local_mean)
        return(local_mean) 
    }
}