#' polarToCartesian
#'
#' @param zenith
#' @param azimuth
#'
#' @return
#' @export
#'
#' @examples
polarToCartesian <- function(zenith, azimuth){
  #convert polar coordinates to cartesian coordinates

  x <- zenith * (cos(azimuth * (pi / 180)))
  y <- zenith * (sin(azimuth * (pi / 180)))
  return(data.frame("x" = x, "y" = y))
}

#' cartesianToPolar
#'
#' @param x
#' @param y
#'
#' @return
#' @export
#'
#' @examples
cartesianToPolar <- function(x, y) {

  # https://www.rdocumentation.org/packages/useful/versions/1.2.6/topics/cart2pol
  zenith <- sqrt(x^2 + y^2)
  azimuth <- atan2(y, x)
  result <- data_frame(zenith = zenith, azimuth = azimuth, x = x, y = y)
  result %<>% mutate(azimuth = azimuth + (y < 0) * 2 * pi) %>%
    dplyr::select(-c(x, y))
  #return to degrees
  result %<>% mutate(azimuth = azimuth / (pi / 180),
                     zenith = zenith / (pi / 180))
  return(result)
}

rotateCartesian <- function(cartVal, rotVal) {

  cartVal_rads <- cartVal * (pi / 180)
  rotVal_rads <- rotVal * (pi / 180)

  data.frame(
    x = (cartVal_rads$x * cos(rotVal_rads)) - (cartVal_rads$y * sin(rotVal_rads)),
    y = (cartVal_rads$x * sin(rotVal_rads)) + (cartVal_rads$y * cos(rotVal_rads))
  )
}

#' rotatePolarCoords
#'
#' @param zenith
#' @param azimuth
#' @param rotateVal
#'
#' @return `data.frame`
#' @export
#'
#' @examples
rotatePolarCoords <- function(zenith, azimuth, rotateVal) {

  cartVals <- polarToCartesian(zenith = zenith,
                               azimuth = azimuth)
  cartVals_rotated <- rotateCartesian(cartVals, rotateVal)
  polarVals <- cartesianToPolar(cartVals_rotated$x, cartVals_rotated$y)

  return(polarVals)
}

