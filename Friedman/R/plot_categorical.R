#' Plot a Categorical Variable
#'
#' Creates a bar chart for one categorical variable in a data frame.
#'
#' @param data A data frame.
#' @param variable The name of a categorical variable as a character string.
#'
#' @return A ggplot object.
#' @export
#' @importFrom ggplot2 ggplot aes geom_bar labs theme_minimal
#'
#' @examples
#' plot_categorical(iris, "Species")
plot_categorical <- function(data, variable) {
  if (!is.data.frame(data)) {
    stop("data must be a data frame.")
  }

  if (!variable %in% names(data)) {
    stop("variable must be a column name in data.")
  }

  ggplot2::ggplot(data, ggplot2::aes(x = .data[[variable]])) +
    ggplot2::geom_bar() +
    ggplot2::labs(
      title = paste("Counts of", variable),
      x = variable,
      y = "Count"
    ) +
    ggplot2::theme_minimal()
}
