## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(musicStats)
library(ggplot2)


## -----------------------------------------------------------------------------
t1 <- track("Dancing in the Dark", "Bruce Springsteen", duration = 232, bpm = 148)
t1


## -----------------------------------------------------------------------------
pl <- playlist()
pl


## -----------------------------------------------------------------------------
t2 <- track("Blinding Lights", "The Weeknd", duration = 200, bpm = 171)
t3 <- track("Billie Jean", "Michael Jackson", duration = 294, bpm = 117)

pl <- add_track(pl, t1)
pl <- add_track(pl, t2)
pl <- add_track(pl, t3)

length(pl)


## -----------------------------------------------------------------------------
pl$tracks


## -----------------------------------------------------------------------------
avg_bpm(pl)

total_duration(pl)

total_duration(pl) / 60

plot(pl)


## -----------------------------------------------------------------------------
# Load it with:
path <- system.file("extdata", "example_tracks.csv", package = "musicStats")
tracks <- read.csv(path)

# Convert to track objects
track_list <- apply(tracks, 1, function(row) {
  track(row["title"], row["artist"], row["duration"], row["bpm"])
})

example_playlist <- playlist(track_list)

# Plot only the first 10 tracks
example_playlist_10 <- playlist(example_playlist$tracks[1:10])
plot(example_playlist_10)


