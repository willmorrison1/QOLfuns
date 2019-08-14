#' Return both min and max
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
minMax <- function(x){
  return(c(min(x, na.rm = TRUE), max(x, na.rm = TRUE)))
}
