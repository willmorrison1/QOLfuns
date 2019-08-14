#' print with timestamp
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
cat1 <- function(x){
  #quick function to add timestamp to all program messages
  message(paste0(Sys.time()), "| ", x, "\n", sep = "")
}
