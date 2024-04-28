`labels<-` <- function(object, ..., value) UseMethod('labels<-')

`labels<-.dendrogram` <- function(object, ..., value){
  # much of this is adapted from dendextend:::labels<-.dendrogram
  if(missing(value)){
    warning("value is missing, returning dendrogram unchanged.")
    return(object)
  }

  l <- labels(object)
  names(value) <- l
  dendrapply(object, \(x){
    if(is.leaf(x))
      attr(x, 'label') <- value[[attr(x,'label')]]
    x
  }, how='post.order')
}
