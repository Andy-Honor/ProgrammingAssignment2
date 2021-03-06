## Cache the calculation of the inverse of matrix

## Creat a special 'Matrix' (a list contains relevant information)

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    list( set = set,get = get, setInverse = setInverse, getInverse = getInverse )

}


## Calculate the inverse of the above special 'Matrix'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if( !is.null(m) ){
            message("getting cached data")
            return( m )
        }
        data <- x$get()
        m <- solve(data,...)
        x$setInverse( m )
        m
}
