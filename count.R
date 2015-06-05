count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  if (is.null(cause)) stop("cause is NULL")
  ## Check that specific "cause" is allowed; else throw error
  causes <- c("shooting", "blunt force", "asphyxiation", "stabbing", "unknown", "other")
  if (!(tolower(cause) %in% causes)) stop("invalid cause")
  ## Read "homicides.txt" data file
  homicides <- readLines("./data/homicides.txt")
  ## Extract cause of death
  search <- paste("[Cc]ause: ", "[", tolower(substr(cause, 1, 1)), toupper(substr(cause, 1, 1)), "]", substring(cause, 2), collapse = "", sep = "")
  ## Return integer containing count of homicides for that cause
  return(length(grep(search, homicides)))
}