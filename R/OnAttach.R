.onAttach <- function(libname, pkgname) {

  my.message <- paste('\nThank you for using pafdR. You can find more details about the book in:',
                      '\n\nhttps://sites.google.com/view/pafdr/home',
                      '\n')
  packageStartupMessage(my.message)
}
