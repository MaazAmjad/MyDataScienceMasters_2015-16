complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame ()
  for (i in id) {
    dat <- rbind (dat, read.csv(files_list[i]))
  }
  nobs <- c()
  for (i in id) {
    comp <- sum(complete.cases(read.csv(files_list[i])))
    nobs <-c(nobs,comp)
  }
  cbind(id, nobs)
}