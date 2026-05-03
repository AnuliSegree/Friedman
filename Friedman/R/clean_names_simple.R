#' Clean Column Names
#'
#' Converts column names to lower case, replaces spaces and punctuation
#' with underscores, and removes repeated underscores.
#'
#' @param data A data frame.
#'
#' @return A data frame with cleaned column names.
#' @export
#'
#' @examples
#' messy <- data.frame("Student Name" = c("A", "B"),
#'                     "Final Grade (%)" = c(91, 84))
#' clean_names_simple(messy)
clean_names_simple <- function(data) {
  if (!is.data.frame(data)) {
    stop("data must be a data frame.")
  }

  new_names <- names(data)
  new_names <- tolower(new_names)
  new_names <- gsub("[^a-z0-9]+", "_", new_names)
  new_names <- gsub("_+", "_", new_names)
  new_names <- gsub("^_|_$", "", new_names)

  names(data) <- new_names
  data
}
