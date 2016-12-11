> makeCacheMatrix <- function(x = matrix()) {
+          m <- NULL
+      set <- function(y) { #set the value of the matrix
+           x <<- y
+           m <<- NULL
+      }
+      get <- function() solve(x) #get the value of the matrix
+      setsolve <- function(solve) m <<- solve #set the value of the inverse
+      getsolve <- function() solve #get the value of the inverse
+      list(set = set, get = get,
+           setsolve = setsolve,
+           getsolve = getsolve)
+ 
+ }
> ## computes the inverse of the special "matrix" 
  
> cacheSolve <- function(x, ...) {
+         ## Return a matrix that is the inverse of 'x'
+          m <- x$getsolve()
+      if(!is.null(m)) {
+           message("getting cached matrix")
+           return(m)
+      }
+      data <- x$getsolve()
+      m <- get(data, ...)
+      x$setsolve(m)
+      m
+ }
