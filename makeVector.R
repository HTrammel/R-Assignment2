# makeVector.R
# This is the expanded version from https://class.coursera.org/rprog-012/forum/thread?thread_id=229
#-----------------------------------------------------
makeVector <- function(data_vector = numeric()) {
    
    stored_mean <- NULL
    
    set <- function(y) {
        data_vector <<- y
        stored_mean <<- NULL
    }
    
    get <- function() {
        return (data_vector)
    }
    
    setmean <- function(sent_replacement_mean){
        stored_mean <<- sent_replacement_mean
    }
    
    getmean <- function() {
        return(stored_mean)
    }
    
    
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}

