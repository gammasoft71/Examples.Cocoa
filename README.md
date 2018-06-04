
# Cocoa Examples

Shows how to use macOS AppKit Cocoa controls without StoryBoard only by programming code (objective-c).

## Hello World

["Hello World"](src/HelloWorld) The classic first application HelloWorld with NSTextField.

## Application and messages

[Application](src/Application) Shows how to create an Application with NSApplication.

[Application with message loop](src/ApplicationWithMessageLoop) Shows how to create your own message loop and dispatcher with NSEvent.

## Common Controls

[Button](src/Button) Shows how to create a Button and Event Click with NSButton.

[CheckBox](src/CheckBox) Shows how to create a CheckBox with NSButton.

[Label](src/Label) Shows how to create a Label with NSTextField.

[ProgressBar](src/ProgressBar) Shows how to create a ProgressBar with NSProgressIndicator.

[RadioButton](src/RadioButton) Shows how to create a RadioButton with NSButton.

[TextBox](src/TextBox) Shows how to create a TextBox with NSTextField.

[TrackBar](src/TrackBar) Shows how to create a TrackBar with NSSlider.

## Containers

[Form](src/Form) Shows how to create a Form with NSWndow.

[GroupBox](src/GroupBox) Shows how to create a GroupBox with NSBox.

[Panel](src/Panel) Shows how to create a Panel with NSScrollView.

[TabControl](src/TabControl) Shows how to create a TabControl with TabPages with NSTabView and NSTabViewItem.

## Menus and toolbars

[MainMenu](src/MainMenu) Shows how to create a MainMenu with NSMenu and NSMenuItem.

## Components

[Timer](src/Timer) Shows how to create a Timer with NSTimer.

## Dialogs

[ColorDialog](src/ColorDialog) Shows how to create a ColorDialog with NSColorPanel.

[FolderBrowserDialog](src/FolderBrowserDialog) Shows how to create a FolderBrowserDialog with NSOpenPanel.

[OpenFileDialog](src/OpenFileDialog) Shows how to create an OpenFileDialog with NSOpenPanel.

[MessageBox](src/MessageBox) Shows how to create a MessageBox with NSAlert.

## Download

``` shell
git clone https://github.com/gammasoft71/CocoaExamples CocoaExamples

```

## Generate and build

To build this project, open "Terminal" and type following lines:

``` cmake
mkdir build
cd build
cmake .. -G "Xcode"
open ./CocoaExamples.xcodeproj
```

## Remarks

This project run only on macOS with [Xcode](https://developer.apple.com/xcode) and [CMake](https://cmake.org).
