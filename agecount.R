agecount <- function(age = NULL) {
  ## Check that "age" is non-NULL; else throw error
  if (is.null(age)) stop("age is NULL")
  ## Read "homicides.txt" data file
  homicides <- readLines("./data/homicides.txt")
  ## Extract ages of victims; ignore records where no age is given
  search <- paste(as.character(age), " [Yy]ears [Oo]ld", collapse = "", sep = "")
  ## Return integer containing count of homicides for that age
  return(length(grep(search, homicides)))
}