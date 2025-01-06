// swift-tools-version:5.10
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
		.target(
			name: "LaunchAtLogin"
		)
	]
)
