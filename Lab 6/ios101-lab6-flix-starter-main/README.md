# Lab 6 - Flix Detail

**Student:** Kyrylo Onishchenko  
**Date:** July 13, 2025

## Overview

In this lab, we enhanced the Flix Feed app by implementing a detail view that presents additional movie information after tapping on a movie cell in the scrolling list. This builds on the previous lab by introducing the concept of view-to-view navigation, data passing between view controllers, and dynamic interface updates using model data.

The detail screen displays the selected movie's poster, backdrop image, title, overview, vote average, and formatted release date. This lab reinforces storyboard-based segues, `prepare(for:sender:)`, and how to present richer content with minimal clutter.

---

## Features

- Taps on a movie cell now navigate to a full-screen detail view.
- Displays:
  - Movie poster and backdrop images
  - Title and overview
  - Vote average
  - Release date formatted for readability
- Uses Nuke to load both poster and backdrop images asynchronously.
- Custom `DetailViewController` updates the UI using the passed-in `Movie` model.

---

## Technical Details

- **Language:** Swift
- **Framework:** UIKit
- **API Used:** [TMDB API](https://developers.themoviedb.org/3/getting-started/introduction)
- **Navigation:** Storyboard segues
- **Image Loader:** NukeExtensions

---

## Implementation Highlights

- Used `UITableViewDelegate`'s `didSelectRowAt` to trigger the segue programmatically.
- Passed both the `Movie` object and its index using the `sender` parameter in `performSegue`.
- Used `prepare(for:sender:)` to safely downcast and assign passed data to `DetailViewController`.
- Created new IBOutlets in `DetailViewController` and connected them to the storyboard layout.
- Used a `DateFormatter` with `.medium` style to convert the movie’s `releaseDate` into a user-friendly string.

---

## Challenges

- Encountered `NSUnknownKeyException` due to mismatched or missing IBOutlet names (`backdropImageView`).  
  This was resolved by fixing the spelling and removing broken connections in the storyboard.
  
- Needed to explicitly configure `JSONDecoder` to handle TMDB’s `"yyyy-MM-dd"` date format for parsing `release_date`.

- Ensured that optional values like `voteAverage` and `releaseDate` were safely unwrapped before UI display.

---

## Credits

- Movie data provided by [TMDB](https://www.themoviedb.org/).
- Image loading handled by [Nuke](https://github.com/kean/Nuke).