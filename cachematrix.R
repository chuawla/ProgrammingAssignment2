## Both functions together will create and store a inverse matrix 

## Creating and storing the matrix and the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  i<- NULL
  set<- function(y)
  {
    x<<- y
    i<<- NULL
  }
  
  get <- function()
    x
  
  setmatrix <- function(inverse)
    i<<- inverse
  
  getmatrix <- function()
    i
  
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## getting the inverse matrix from cache
cacheSolve <- function(x, ...) {
  ##Getting the matrix
  i<- x$getmatrix()
  ## Check if matrix is created
  if(!is.null(i))
  {
    #Created? Get from cache
    message("Getting cache data")
    return (i)
  }
  
  ## Not created?
  ## Create incerse matrix
  data<- x$get()
  i<- solve(data)
  ## Save matrix
  x$setmatrix(i)
  
  x$getmatrix()
}
