# Flix Favorites - iOS Movie App

**Student:** Kyrylo Onishchenko  
**Date:** July 21

**Lab 7:** Flix Favorites  

## 📱 Overview

Flix Favorites is an iOS app that allows users to browse popular movies using data from The Movie Database (TMDB) API. Users can tap on a movie to view detailed information and choose to mark it as a favorite. Favorited movies are saved locally and displayed in a dedicated Favorites tab.

---

## 🚀 Features

- Browse a list of popular movies from TMDB.
- View detailed movie information including title, rating, poster, backdrop, release date, and overview.
- Mark and unmark movies as favorites using a heart-shaped button.
- View and manage a list of favorite movies in the Favorites tab.
- Persist favorites between app launches using local storage.

---

## 🛠 Technical Details

- **Language:** Swift  
- **UI Framework:** UIKit  
- **Persistence:** UserDefaults  
- **Image Loading:** NukeExtensions  
- **Navigation:** Storyboard with TabBar and Navigation Controllers  
- **Networking:** URLSession with Codable for JSON parsing

---

## 🧠 Key Implementations

- The app uses a custom model to represent each movie, with support for parsing TMDB JSON data.
- A heart-shaped button toggles the selected state and adds or removes the movie from the favorites list.
- The favorites list is stored using `UserDefaults` and updated in real-time.
- The Favorites tab retrieves and displays all saved favorite movies.

---

## 🧪 Challenges & Fixes

- Default equality checks for Movie objects failed due to small differences in decoding (e.g., optional values or date formatting). This was resolved by explicitly comparing movie IDs.
- The favorite button's state did not update consistently on screen load. This was fixed by checking saved favorites and updating the UI in the detail view controller.
- To prevent duplicate favorites, the app checks if the movie already exists in storage before adding it.

---



---

## ✅ Checkpoint Summary

- [x] Movies load and display from TMDB
- [x] Detail screen displays correct movie info
- [x] Favorite button saves/removes movies correctly
- [x] Favorites tab updates and persists data across app launches
- [x] UI reflects favorite state consistently

---


---