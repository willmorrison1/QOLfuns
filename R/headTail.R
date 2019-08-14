#' Get head and tail of a vector
#'
#' @param vec
#' @param index
#' @param sepChar
#'
#' @return
#' @export
#'
#' @examples
headTail <- function(vec, index = FALSE, sepChar = NULL){
  #vec - input vector
  #index - return the index for the head and tail?
  #separ: add character separator

  if (index) {
    return(c(1, length(vec)))
  }
  if (!is.null(sepChar)) {
    return(paste(head(vec, n = 1), sepChar, tail(vec, n = 1), sep = ""))
  } else {
    return(c(head(vec, n = 1), tail(vec, n = 1)))
  }
}
