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

## Creating Tracks
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
