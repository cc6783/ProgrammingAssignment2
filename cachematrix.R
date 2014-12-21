#Programming  Assignment 2

# Part 1: makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

# sets x equal to an empty matrix
makeCacheMatrix <- function(x = matrix()) {

# Set the inverse equal to NULL 
         I <- NULL
         
# set function argument to x 
         set <- function(y){
         x <<- y
         
# Inverse is re-set to NULL 
         I <<- NULL
 
  }
# get function returns the matrix
         get <- function() x

# setInverse overrides the previous value of I and assigns the argument to Inverse  
         setInverse <- function(solve) I <<- solve

# getInverse returns the Inverse 
         getInverse <- function() I

# getInverse returns the Inverse 
         list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}

# Part 2: cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

# Retrives the most recent value for the inverse
         cacheSolve <- function(x, ...) {
         I <- x$getInverse()
         
# If the value of Inverse is NOT null cacheSolve returns that value  
         if(!is.null(I)){
         message("getting cached data")
         return(I)
            
         }
# If the value of Inverse is NULL, new inverse with given data is calculated
        message("new calculated Inverse")
        dat <- x$get()
        I <- solve(dat, ...)
        x$setInverse(I)
#Inverse value   
        I 
}


