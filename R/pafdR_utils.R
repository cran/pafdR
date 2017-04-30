#' Function to check if system has pdflatex.exe available
#'
#' @return TRUE if the pdflatex is available, FALSE if not
#' @examples
#' pafdR_check.pdflatex()
#'
#' @export
pafdR_check.pdflatex <- function(){

  flag <- FALSE

  try({system('pdflatex -version', intern = T)
    flag <- TRUE}, silent = T)


  return(flag)
}

#' Generates random vector for numerical answer (internal)
#'
#' @return A vector with random weights, including value 1 for first element
#' @export
#'
#' @examples
#' library(pafdR)
#' my.sol <- 1 #assume solution to exercise is 1
#'
#'  my.answers <- gen.rnd.vec()*my.sol
#'  my.answers
gen.rnd.vec <- function(){
  rnd.vec.1 <- c(1, seq(stats::runif(1,0.1,0.2), stats::runif(1,0.7,0.8), length.out = 4))
  rnd.vec.2 <- c(1, seq(stats::runif(1,1.1,1.2), stats::runif(1,1.7, 1.8), length.out = 4))
  rnd.vec.3 <- c(1, seq(stats::runif(1,0.25,0.5),stats::runif(1,0.6,0.8), length.out = 2),
                 seq(stats::runif(1,1.2,2), length.out = 2))

  rnd.l <- list(rnd.vec.1, rnd.vec.2, rnd.vec.3)
  rnd.vec <- sample(rnd.l,1)[[1]]
  return(rnd.vec)
}
