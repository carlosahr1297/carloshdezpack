#' Method of Moments Parameters
#'
#' @description This function takes a variable and computes its method of moments
#' parameters, alpha and beta. This is useful for bootstrapping. The funciton accepts
#' a single parameter
#'
#' @param Var
#'
#' @return
#' @export
#'
#' @examples
#' MOM_Parameters(variable)


MOM_Parameters <- function(Var){
  x_bar = sum(Var)/50
  alpha_MOM = ((x_bar)^2)/((1/length(Var)*sum((Var^2) - (x_bar^2))))
  beta_MOM = (x_bar)/((1/length(Var)*sum((Var^2) - (x_bar^2))))
  print(alpha_MOM)
  print(beta_MOM)
}
