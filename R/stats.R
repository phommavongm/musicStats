#' Get average BPM of a playlist
#' @export
avg_bpm <- function(pl) {
  stopifnot(inherits(pl, "playlist"))
  mean(sapply(pl$tracks, function(x) x$bpm))
}

#' Get total duration of a playlist
#' @export
total_duration <- function(pl) {
  stopifnot(inherits(pl, "playlist"))
  sum(sapply(pl$tracks, function(x) x$duration))
}
