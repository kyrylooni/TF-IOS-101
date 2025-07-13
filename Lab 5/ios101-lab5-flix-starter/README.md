# Lab 5 - Flix Feed

**Student:** Kyrylo Onishchenko  
**Date:** July 6, 2025

## Overview

In this lab, we built an iOS app that displays a scrollable list of movies using a `UITableView`. The app fetches data from the TMDB (The Movie Database) API and shows each movie's poster, title, and overview. This project reinforces how to use table views and work with JSON data from a remote API.

---

## Features

- Fetches popular movie data from the TMDB API.
- Displays movie posters, titles, and overviews in a table view.
- Loads images asynchronously using the Nuke library for smooth performance.
- Utilizes custom `UITableViewCell` subclass for cleaner and reusable UI code.

---

## Technical Details

- **Language:** Swift
- **Framework:** UIKit
- **API Used:** [TMDB API](https://developers.themoviedb.org/3/getting-started/introduction)
- **Image Loader:** NukeExtensions

---

## Implementation Highlights

- Created a `Movie` model and parsed API responses using `Codable`.
- Connected storyboard prototype cells to a custom `MovieCell` class.
- Registered and dequeued reusable cells with the identifier `"MovieCell"`.
- Loaded and displayed images asynchronously from TMDB’s CDN.

---

## Challenges

- Initially encountered the error:  
  `unable to dequeue a cell with identifier MovieCell - must register a nib or a class for the identifier or connect a prototype cell in a storyboard`.  
  This was resolved by connecting the prototype cell to the `MovieCell` class and assigning the correct reuse identifier in the storyboard.
  
- Debugged layout issues with incorrect or missing IBOutlet connections.


## Credits

- Movie data provided by [TMDB](https://www.themoviedb.org/).
- Image loading handled by [Nuke](https://github.com/kean/Nuke).