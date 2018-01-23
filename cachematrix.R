## Put comments here that give an overall description of what your
## functions do

## initiates a matrix, gets its value, sets the value of its inverse, gets the inverse

makeCacheMatrix <- function(x = matrix()) {
        inverse<- NULL
        set <-function(y){
                x<<-y
                inverse<<-NULL
        }
        get <-function() x
        setinverse <-function(solve) inverse<<- solve
        getinverse <-function() inverse
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## checks to see if the inverse has already been made, if so, returns it, if not, calculates it

cacheSolve <- function(x, ...) {
       inverse<-x$getinverse()
       if(!is.null(inverse)){
               message("getting pre-calculated inverse")
               return(inverse)
       }
       data<-x$get()
       inverse<-solve(data)
       x$setinverse(inverse)
       inverse
}
