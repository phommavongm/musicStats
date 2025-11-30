#' Plot BPM of tracks in a playlist
#' @export
plot.playlist <- function(x, ...) {
  df <- data.frame(
    title = sapply(x$tracks, function(t) t$title),
    bpm = sapply(x$tracks, function(t) t$bpm)
  )

  ggplot2::ggplot(df, ggplot2::aes(x = title, y = bpm)) +
    ggplot2::geom_col() +
    ggplot2::theme_minimal() +
    ggplot2::labs(title = "BPM of Tracks", x = "Track", y = "BPM")
}
