#' Beta Distribution Parameters
#'
#' This function computes shape parameters of a beta distribution, given the mean and variance.
#'
#' @param mu A numeric value specifying the mean.
#' @param var A numeric value specifying the variance.
#' @return A list of length two containing the two shape parameters.
#' @export

beta_params <- function(mu, var){
  #check conditions
  if (mu <= 0 | mu >= 1){
    stop('mean must be between 0 and 1')
  }
  if (var <= 0 | var >= 0.25){
    stop('variance must be between 0 and 0.25')
  }
  alpha <- (((1 - mu)/var) - (1/mu))*mu^2
  beta <- alpha*((1/mu) - 1)
  return(list(alpha=alpha, beta=beta))
}

