> makeCacheMatrix <- function(x = matrix()) {
+          m <- NULL
+      set <- function(y) {
+           x <<- y
+           m <<- NULL
+      }
+      get <- function() x
+      setsolve <- function(solve) m <<- solve
+      getsolve <- function() solve
+      list(set = set, get = get,
+           setsolve = setsolve,
+           getsolve = getsolve)
+ 
+ }
> ## Write a short comment describing this function
> 
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
