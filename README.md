# Eid Celebration App

A simple iOS application that creates an interactive Eid celebration experience. The app features three main screens:
1. Welcome screen with name input
2. Personalized Eid greeting
3. Collection of Eid-related sounds

## Setup Instructions

1. Create a new Xcode project:
   - Open Xcode
   - File > New > Project
   - Choose "App" under iOS
   - Set Product Name as "EidApp"
   - Choose "SwiftUI" for interface
   - Choose "Swift" for language
   - Select your team and organization identifier
   - Choose a location to save the project

2. Add the Source Files:
   - Replace the contents of `EidApp.swift` with the provided code
   - Replace the contents of `ContentView.swift` with the provided code
   - Create new files `HappyEidView.swift` and `EidListView.swift` and add the provided code

3. Add Sound Files:
   - Create a new group in your project called "Sounds"
   - Add 15 sound files named "sound1.mp3" through "sound15.mp3"
   - Make sure to check "Copy items if needed" when adding the files
   - Verify that the files are included in your target's Build Phases > Copy Bundle Resources

## Features

- User name input with validation
- Animated navigation between screens
- Beautiful UI with custom icons and colors
- Interactive sound playback
- List of 15 different Eid-related sounds
- Modern SwiftUI interface

## Requirements

- iOS 14.0 or later
- Xcode 12.0 or later
- Swift 5.0 or later

## Sound Files

You'll need to add your own sound files to the project. Make sure they are:
- Named "sound1.mp3" through "sound15.mp3"
- In MP3 format
- Added to the project bundle
- Included in the target's membership 