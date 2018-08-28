# set function
makeCacheMatrix <- function(x = matrix){
      m <- NULL
}

# set matrix
set <- function(matrix){
      x <<- matrix
      m <<- NULL
}

# get matrix
get <- function(){
      x
}

# set inverse of matrix
setInverse <- function(inverse){
      m <<- inverse
}

# get inverse of matrix
getInverse <- function(){
      m
}

# return a list of methods
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)

# inverse 
cacheSolve <- function(x, ...){
      m <- x$getInverse()

# return the inverse if already computed
      if(!is.null(m)){
            message("getting cached data")
            return(m)
}      

      # get matrix from object
      data <- x$get()
      
      # calculate
      m <- solve(data) %*% data
      
      # set inverse to object
      x$setInverse(m)
      
      # return matrix(inversed)
      m
}






