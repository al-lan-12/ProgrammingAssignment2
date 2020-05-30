## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This functioncerates matrix that caches itself
makeCacheMatrix <- function(x = matrix()) {
  
  inv<-NULL
  
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  
  get<-function(){
    x
  }
  
  setinverse<-function(solve.Matrix){
    inv<<-solve.Matrix
  }
  
  getinverse<-function(){
    inv
  }
  
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

##This function gives inverse of the matrix returned the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv<-x$getinverse()
  
  if(!is.null(inv)){
    message("getting from cache")
    return(inv)
    }
  
  data<-x$get()
  
  inv<-solve(data)
  
  x$setinverse(inv)
 
   inv
}
