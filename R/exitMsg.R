#' Extended exit message
#'
#' @param messageText
#' @param exitStatus Passed to quit()
#'
#' @return
#' @export
#'
#' @examples
exitMsg <- function(messageText, exitStatus){
  cat1(messageText)
  if (!is.na(Sys.getenv("RSTUDIO", unset = NA))) {
    stop(exitStatus)
  }else{
    quit("no", status = exitStatus)
  }
}
