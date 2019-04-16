## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.
## These functions are written to satisfy the requirements of Coursera R Programming Week 2 Assignment. 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {    ## This function defines the argument with default mode of "matrix" 

    inv <- NULL                         ## initializes inv as NULL; will hold value of matrix inverse                               
    set <- function(y) {                ## defines the set function to assign new value of matrix in parent environment                    
        x <<- y                             
        inv <<- NULL                    ## if there is a new matrix, resets inv to NULL
                       
    }

}

## This function computes the inverse of the special "matrix" created by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then it should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {        ## This returns a matrix that is the inverse of 'x'
        
    get <- function() x                 ## This defines the get fucntion and returns value of the matrix argument

    setinverse <- function(inverse)     ## This assigns value of inv in parent environment
    inv <<- inverse                             
    getinverse <- function() inv        ## This gets the value of inv where called
                                        ## The next statement is needed to refer to the functions with the $ operator

    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
        
}
