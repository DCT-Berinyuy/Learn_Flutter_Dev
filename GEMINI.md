# Project: Learn Flutter Dev

## Project Overview

This is a Flutter project named `flutter_app`. The project serves as a learning playground for Flutter development, demonstrating various widgets and features. The application has a simple structure with a home page and a profile page. It also includes a theme switcher for toggling between light and dark modes.

The main technologies used are:

*   **Flutter:** The core framework for building the application.
*   **Dart:** The programming language used for Flutter development.

The project is structured as follows:

*   `lib/main.dart`: The entry point of the application.
*   `lib/views/widget_tree.dart`: The main widget that builds the app's UI, including the `AppBar` and `BottomNavigationBar`.
*   `lib/views/pages/home_page.dart`: A simple home page with a welcome message.
*   `lib/views/pages/profile_page.dart`: A page that showcases a variety of Flutter widgets, such as buttons, text fields, checkboxes, switches, and sliders.
*   `lib/data/notifiers.dart`: Contains the `ValueNotifier`s for managing the theme and selected page.
*   `lib/widgets/navbar_widget.dart`: The bottom navigation bar widget.

## Building and Running

To build and run this project, you will need to have the Flutter SDK installed.

1.  **Clone the repository:**

    ```bash
    git clone <repository-url>
    ```

2.  **Get dependencies:**

    ```bash
    flutter pub get
    ```

3.  **Run the app:**

    ```bash
    flutter run
    ```

## Development Conventions

*   **State Management:** The project uses `ValueNotifier` for simple state management.
*   **Styling:** The app uses `ThemeData` to define the color scheme and `ValueListenableBuilder` to switch between light and dark themes.
*   **Code Structure:** The code is organized into `data`, `views`, and `widgets` directories.
*   **Linting:** The project uses `flutter_lints` to enforce good coding practices.
*   **Testing:** The project includes a basic widget test, but it is not relevant to the current application. The testing strategy is not well-developed.

## Learning Notes

The `Rough_Notes.md` file contains a collection of notes on various Flutter widgets and concepts. These notes appear to be for personal learning and reference. The topics covered include:

*   **Basic Layout Widgets:** `Container`, `Column`, `Row`, `Center`, `Stack`, `Padding`, `SizedBox`, `Icon`, `ListTile`, and `Wrap`.
*   **Master Layout Widgets:** `MaterialApp`, `Scaffold`, `AppBar`, `NavigationBar`, `FloatingActionButton`, `Drawer`, and `SafeArea`.
*   **State Management:** `StatefulWidget`, `StatelessWidget`, `SelectedIndex`, `ValueNotifier`, and `ValueListenableBuilder`.
*   **User Input:** `TextField`, `Checkbox`, `CheckboxListTile`, `Switch`, `.adaptive`, `Slider`, `SingleChildScrollView`, `GestureDetector`, `InkWell`, and various types of buttons.
*   **Debugging:** Notes on how to handle errors in Flutter.
