## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix function is for creating a list which is contain functions to set 
## the value of the matrix and inverse of the matrix. The function alse containing
## functions to get the value of matrix and inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(a) {
                x <<- a
                i <<- NULL
        }
        get <- function() x
        set_inverse <- function(inv) i <<- inv
        get_inverse <- function() i
        list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function

## cacheSolve function is returning the inverse of the matrix which is create by
## makeCacheMatrix. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$get_inverse()
        if(!is.null(i)) {
                message('getting cached data.')
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$set_inverse(i)
        i
}
