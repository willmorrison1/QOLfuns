#' Flexible round
#'
#' @param x
#' @param base
#'
#' @return
#' @export
#'
#' @examples
mround <- function(x, base){
  base * round(x / base)
}
