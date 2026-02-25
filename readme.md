# LaunchAtLogin

> Add “Launch at Login” functionality to your macOS app in seconds

> [!WARNING]
> The [Mac App Store guidelines](https://developer.apple.com/app-store/review/guidelines) require “launch at login” functionality to be enabled in response to a user action. Your app will be rejected if you set the state to true by default

## Supported platforms
- macOS 13+
- For legacy versions check out the old [`LaunchAtLogin` package](https://github.com/sindresorhus/LaunchAtLogin)

## Install

Add `https://github.com/TopScrech/LaunchAtLogin` in the [“Swift Package Manager” tab in Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Usage

Put the toggle in your `Settings` scene. That's it.

```swift
import SwiftUI
import LaunchAtLogin

@main
struct MyApp: App {
	var body: some Scene {
		Settings {
			Form {
				LaunchAtLogin.Toggle()
			}
		}
	}
}
```

The `LaunchAtLogin.Toggle` view works similarly to the built-in `Toggle` except that is has a predefined binding and label

The default label is `"Launch at login"`, but it can be overridden:

```swift
import SwiftUI
import LaunchAtLogin

struct SettingsScreen: View {
	var body: some View {
		LaunchAtLogin.Toggle("Launch at login 🦄")
		
		// Or
		
		LaunchAtLogin.Toggle {
			Text("Launch at login 🦄")
		}
	}
}
```

You can also access the state directly:

```swift
import LaunchAtLogin

print(LaunchAtLogin.isEnabled)
// false

LaunchAtLogin.isEnabled = true

print(LaunchAtLogin.isEnabled)
// true
```

## Related

- [Defaults](https://github.com/sindresorhus/Defaults) - Swifty and modern UserDefaults
- [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts) - Add user-customizable global keyboard shortcuts to your macOS app
- [DockProgress](https://github.com/sindresorhus/DockProgress) - Show progress in your app's Dock icon
- [More…](https://github.com/search?q=user%3Asindresorhus+language%3Aswift+archived%3Afalse&type=repositories)
