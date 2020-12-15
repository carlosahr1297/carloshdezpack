#' Histogram with K breaks
#'
#' @description creates a histogram with K breaks for quantitative variables. The function has
#' 3 parameters (1 variable and 2 fixed). You only have to specify the variable.
#' @param variable this is a quantitative variable. Categorical variable will not work
#' @param k number of breaks based on number of observations for variable. (you do not need to
#' specify this)
#' @param n length of variable. You do not need to enter this in function.
#'
#' @return hist(variable, breaks=k)
#' @export
#'
#' @examples
#' Kbreaks(variable)

Kbreaks = function(variable,k=1+log2(n),n=length(variable)){
  return(hist(variable,breaks=k, main="histogram of variable"))
}
