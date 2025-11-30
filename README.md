# musicStats
**musicStats** is a simple R package demonstrating the use of **S3 object-oriented programming** for modeling music tracks and playlists. 

- Creating track objects  
- Building playlists  
- Computing playlist statistics (duration, average BPM)  
- Visualizing track information with `ggplot2`  
- Loading an example dataset of 10 songs  

This package is designed as a clean, beginner-friendly example of building a full R package with:
- S3 classes  
- Custom methods  
- ggplot2 graphics  
- A vignette  
- Unit tests  
- Example data  

---

## 📦 Installation

To install the development version from your local folder:

```r
devtools::install("path/to/musicStats")
```
Or, if the package is already in your working directory:
```r
devtools::install()
```
Load the package:
```r
library(musicStats)
```

## 🎶 Creating Tracks
Create a single track:

```r
t1 <- track("Dancing in the Dark", "Bruce Springsteen", duration = 232, bpm = 148)
t1
```

Tracks include:
- title
- artist
- duration (in seconds)
- bpm (beats per minute)

## 🎼 Creating a Playlist
Start an empty playlist:
```r
pl <- playlist()
```
Add tracks to it:
```r
pl <- add_track(pl, t1)

t2 <- track("Blinding Lights", "The Weeknd", 200, 171)
t3 <- track("Billie Jean", "Michael Jackson", 294, 117)

pl <- add_track(pl, t2)
pl <- add_track(pl, t3)
```
Count tracks:
```r
length(pl)
# [1] 3
```
## 📊 Playlist Statistics

```r
avg_bpm(pl)
# Average beats per minute

total_duration(pl)
# Total duration in seconds
```
Convert to minutes:
```r
total_duration(pl) /  60
```

## 📈 Plotting
The playlist class includes a custom S3 plot method:
```r
plot(pl)
```
This produces a ggplot2 bar chart of BPM for all tracks.

## 🎼 Example Dataset
The package includes a CSV file of example music from spotify most popular.
Load it:
```r
path <- system.file("extdata", "example_tracks.csv", package = "musicStats")
tracks <- read.csv(path)
head(tracks)
```
Convert to track objects:
```r
track_list <- apply(tracks, 1, function(row) {
  track(row["title"], row["artist"], row["duration"], row["bpm"])
})

example_playlist <- playlist(track_list)
```
Plot BPM of the example playlist:
```r
plot(example_playlist)
```
