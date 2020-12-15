#' Describe Function
#'
#' @description Takes a single parameter, a quantitative variable, and returns basic
#' descriptive plots, including the histogram, density histogram with a density line, a boxplot,
#' and a quantile plot.
#'
#' @param var The only parameter. Must be a quantitative variable.
#'
#' @return
#' @export
#'
#' @examples
#' describe(variable)


describe <- function(var){
  hist(var, breaks = "FD", main="histogram of variable")
  hist(var, breaks = "FD", main="density histogram of variable", freq = FALSE)
  lines(density(var), lwd=2, col="blue")
  Boxplot(~var, main="boxplot of variable")
  qqPlot(~var, main="quantile plot of variable")
}
