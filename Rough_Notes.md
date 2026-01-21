# Chapter 1: Create Flutter Project
### Widget Inside Widget
- Flutter is basically all about widgets under widgets. Thats all you need to know.
### Widgets vs Arguments
- A Widget starts with a capital latter while an argument starts with a lower case latter.
### Mouse over
- When you hover a mouse over a __widget__ or an argument, Flutter gives its description

# Chapter 2: Basic Layout
### Container
- Its just like an empty box that you can fill it with anything
### COlumn
- Creates a vertical array of children
### Row
- Creates a horizontal array of children
## Note: mainAxisAlignment is the mainAxis while the crossAxisAlignment is the inverse.
### Center
- Creates a widget that centers its child.
### Stack
- Creates a stack layout widget. By default, the non-positioned children of the stack are aligned by their top left corners.
### Padding
- Creates a widget that insets its child. Padding is only for padding onlike the container widget
### SizeBox
-  Creates a fixed size box. The [width] and [height] parameters can be null to indicate that the size of the box should not be constrained in the corresponding dimension. Note: the SizeBox is like a container but only for the height and width. This makes it less expensive for Flutter.
### Icon
- Creates an icon.
### ListTile
- Creates a list tile.
### print
- Prints an object to the console.
### Wrap
- Creates a wrap layout. By default, the wrap layout is horizontal and both the children and the runs are aligned to the start.

# Chapter 3: Master Layout
### MaterialApp & Scafold
_StateLessWidget means that the screen will not change while the StateFullWidget means the screen can change.
- MaterialApp is like the theme of the app while the Scafold is like the skeleton of the app.
### AppBar
- Creates a Material Design app bar.
### NavigationBar
- Creates a Material 3 Navigation Bar component. The value of [destinations] must be a list of two or more [NavigationDestination] values.
### FloatingActionButton
- A button displayed floating above [body], in the bottom right corner.
### Drawer
- Creates a Material Design drawer.
### SafeArea
- Creates a widget that avoids operating system interfaces.

# Chapter 4: Fix Bugs
### Type 1: Hover the statement to display more details about the error.
### Type 2: Displays red screen on the running device. Go to debug console and follow bug links.

# Chapter 5: States
### StateFull
- Its a way to tell flutter the screen can refresh.
### Stateless
- Can't refresh the screen.
### SelectedIndex
- Determines which one of the [destinations] is currently selected.
### ValueNotifier
- Hold data that can be listened to for changes
### ValueListenableBuilder
- Listen to changes in ValueNotifier and rebuild widgets(Don't need the setState method)

# Chapter 6: User Input
### Text Field
- Creates a Material Design text field.
### CheckBox
- Creates a Material Design checkbox.
### CheckBoxListTile
- Creates a combination of a list tile and a checkbox.
### Switch
- Creates a Material Design switch.
### .adaptive
- Creates an adaptive [Checkbox] based on whether the target platform is iOS or macOS, following Material design's Cross-platform guidelines.
### Slider
-  Creates an adaptive [Slider] based on the target platform, following Material design's Cross-platform guidelines.
### SingleChildScrollView
- Creates a box in which a single widget can be scrolled.
### GestureDetector
- Creates a widget that detects gestures.
### InkWell
- Creates an ink well.
### Buttons
- There are `several` types of buttons in Flutter.

# Chapter 7: Navigation (Routing)
## Push
- Push the given route onto the navigator that most tightly encloses the given context.

# Chater 8: Clean UI Widgets
## ClipRRect
- Creates a rounded-rectangular clip.
## Hero
- Creates a hero
## SnackBar
- Creates a snack bar
## Alert
- Creates an alert dialog
## Divider
- Creates a Material Design divider.
## Card
- Creates a Material Design card.

# Chapter 9: Packages
## Lotties
- A widget to display a loaded [LottieComposition] animations
## FittedBox
- Creates a widget that scales and positions its child within itself according to [fit]
## Dispose
- The dispose is part of the override that you can use inside statefull widget only take note.
