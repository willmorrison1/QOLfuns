#' Format TIME as shown
#'
#' @param DATE
#'
#' @return
#' @export
#'
#' @examples
jY <- function(DATE = NULL){
  if (is.null(DATE)) {
    DATE <- Sys.Date()
  }
  return(format(DATE, "%j%Y"))
}


#' Format TIME as shown
#'
#' @param TIME
#'
#' @return
#' @export
#'
#' @examples
jYHHMM <- function(TIME = Sys.time()){
  return(format(TIME, "%j%Y%H%M"))
}

#' Format TIME as shown
#'
#' @param TIME
#'
#' @return
#' @export
#'
#' @examples
jYHHMMSS <- function(TIME = Sys.time()){
  return(format(TIME, "%j%Y%H%M%S"))
}


#' Format TIME as shown
#'
#' @param TIME
#'
#' @return
#' @export
#'
#' @examples
jYHHMMSSFS <- function(TIME = Sys.time()){
  oTime <- format(TIME, "%j%Y%H%M%S%OS1")
  oTimeFormatted <- gsub("[.]", "_", oTime)
  return(oTimeFormatted)
}
