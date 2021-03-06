## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverseMatrix <- NULL
      
      set <- function(y){
            x <<- y
            inverseMatrix <<- NULL
      }
      
      get <- function() x 
      setinverse <- function(inverse) inverseMatrix <<- inverse
      getinverse <- function() inverseMatrix
      
      list(set = set, get = get, 
           getinverse = getinverse, 
           setinverse = setinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverseMatrix <- x$getinverse()
      
      if(!is.null(inverseMatrix)){
            message("getting cached inverse matrix")
            return(inverseMatrix)
      }
      
      matr <- x$get()
      inverseMatrix <- solve(matr)
      x$setinverse(inverseMatrix)
      inverseMatrix 
}
