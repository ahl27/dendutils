`labels<-` <- function(object, ..., value) UseMethod('labels<-')

`labels<-.dendrogram` <- function(object, ..., value){
  # much of this is adapted from dendextend:::labels<-.dendrogram
  if(missing(value)){
    warning("value is missing, returning dendrogram unchanged.")
    return(object)
  }

  l <- labels(object)
  ll <- length(l)
  if(ll != length(value)){
    warning("Number of items to replace not equal to replacement length")
    value <- rep(value, length.out=ll)
  }

  # faster replacement if all are unique
  if(length(unique(l)) == ll){
    names(value) <- l
    dendrapply(object, \(x){
      if(is.leaf(x))
        attr(x, 'label') <- value[[attr(x,'label')]]
      x
    }, how='post.order')
  } else {
    .INTERNAL_LABEL_CTR <- 1L
    dendrapply(object, \(x){
      if(is.leaf(x)){
        attr(x, 'label') <- value[.INTERNAL_LABEL_CTR]
        .INTERNAL_LABEL_CTR <<- .INTERNAL_LABEL_CTR+1L
      }
      x
    }, how='post.order')
  }
}
