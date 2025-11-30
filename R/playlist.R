#' Create a playlist
#'
#' @param tracks A list of track objects
#'
#' @return An S3 object of class "playlist"
#' @export
playlist <- function(tracks = list()) {
  structure(
    list(tracks = tracks),
    class = "playlist"
  )
}

#' Add a track to a playlist
#' @export
add_track <- function(pl, track) {
  stopifnot(inherits(pl, "playlist"))
  stopifnot(inherits(track, "track"))

  pl$tracks <- c(pl$tracks, list(track))
  pl
}

#' Number of tracks in playlist
#' @export
length.playlist <- function(x) {
  length(x$tracks)
}
