// swift-tools-version:6.2.1
import PackageDescription

let package = Package(
	name: "LaunchAtLogin",
	platforms: [
		.macOS(.v13),
		.macCatalyst(.v16)
	],
	products: [
		.library(
			name: "LaunchAtLogin",
			targets: [
				"LaunchAtLogin"
			]
		)
	],
	targets: [
		.target(name: "LaunchAtLogin")
	]
)
