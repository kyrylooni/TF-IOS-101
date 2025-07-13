# ☁️ CloudCast – Weather Forecast Lab

**Student:** Kyrylo Onishchenko  
**Date:** June 18, 2025

## 📱 Overview

CloudCast is a UIKit-based weather forecast app that displays a mock forecast using static data. It was developed as part of a learning lab to practice data modeling, UIKit layout, and IBOutlets.

---

## ✅ Features Implemented

- [x] Created a `WeatherForecast` struct to model weather data
- [x] Defined a `WeatherCode` enum with:
  - A textual `description`
  - An associated `UIImage?` for weather icons
- [x] Connected `IBOutlets` in `ForecastViewController.swift` for:
  - `forecastImageView`
  - `descriptionLabel`
  - `temperatureLabel`
  - `dateLabel`
  - `locationLabel`
- [x] Used `DateFormatter` to display the forecast date in `MMMM d, yyyy` format
- [x] Dynamically updated UI using a mock `WeatherForecast` in `viewDidLoad`

---

## ⚠️ Known Issues

- ❌ **Storyboard contains unsatisfied and conflicting constraints**
  - Example: conflicting constraints on `UIImageView.height` and duplicate `leading` constraints
  - Auto Layout warning: _"Unable to simultaneously satisfy constraints..."_
- ❌ One or more **IBOutlets were previously misnamed** (e.g., `temperatureLable`) and may still be causing runtime exceptions or layout mismatches
- ❌ Layout is **not fully polished** — multiple overlapping constraints may be automatically broken by the system, potentially leading to unpredictable layout

---

## 🧪 Next Steps

- ✅ Clean and verify all IBOutlet connections in storyboard
- ❌ Fix Auto Layout issues by:
  - Removing duplicate or contradictory constraints
  - Validating stack view sizing and alignment
- ❌ Complete all steps outlined in the lab instructions, including optional enhancements

---
