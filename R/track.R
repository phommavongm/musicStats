#' Create a music track
#'
#' @param title Track title
#' @param artist Artist name
#' @param duration Duration in seconds
#' @param bpm Beats per minute
#'
#' @return An S3 object of class "track"
#' @export
track <- function(title, artist, duration, bpm) {
  structure(
    list(
      title = as.character(title),
      artist = as.character(artist),
      duration = as.numeric(duration),
      bpm = as.numeric(bpm)
    ),
    class = "track"
  )
}

#' Print track
#' @export
print.track <- function(x, ...) {
  cat("Track:", x$title, "\n")
  cat("Artist:", x$artist, "\n")
  cat("Duration:", x$duration, "seconds\n")
  cat("BPM:", x$bpm, "\n")
}
