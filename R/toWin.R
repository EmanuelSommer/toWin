
#' Convert windows file paths into R friendly ones
#'
#' As the backslash has special properties in R (escape expression) one has to replace the backslashes in windows file paths with forwardslashes.
#' This is an annoying task and therefore there is this function. Just type toWin::toWin() into the console, paste the path into the console and get the R friendly path back (also in the Clipboard).
#'
#' @return The R friendly file path in the console and the clipboard
#' @export
#'
#' @author Emanuel Sommer
toWin <- function() {
  cat("Paste windows file path and hit RETURN twice")
  scaned <- scan(what = "")
  replaced <- gsub("\\\\", "/", scaned)
  writeClipboard(paste(replaced, collapse=" "))
  cat("R friendly path. (Also on the clipboard.)\n", replaced, "\n")
}
