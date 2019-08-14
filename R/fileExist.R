#' Extended file exist check
#'
#' @param fileName
#' @param actionFun A function to run if file doesn't exist
#'
#' @return
#' @export
#'
#' @examples
fileExistVerbose <- function(fileName, actionFun){
  #generic function to check if file exists, print a message to say so,
  #and perform a given action (actionFun) that wraps around the message
  notExistsInd <- !file.exists(fileName)
  if (any(notExistsInd == TRUE)) {
    actionFun(print(paste(fileName[notExistsInd], "does not exist")))
    actionFun
  }
}


#' Extended directory exist check
#'
#' @param dirName
#' @param actionFun A function to run if folder doesn't exist
#'
#' @return
#' @export
#'
#' @examples
dirExistVerbose <- function(dirName, actionFun){
  #generic function to check if file exists, print a message to say so,
  #and perform a given action (actionFun) that wraps around the message
  notExistsInd <- !dir.exists(dirName)
  if (any(notExistsInd == TRUE)) {
    actionFun(print(paste(dirName[notExistsInd], "does not exist")))
    actionFun
  }
}
