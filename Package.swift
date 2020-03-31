// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "ImageSlideshow",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "ImageSlideshow",
            targets: ["ImageSlideshow"]),
        .library(
            name: "ImageSlideshow/Kingfisher",
            targets: ["ImageSlideshowKingfisher"])
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.13.2")
    ],
    targets: [
        .target(
            name: "ImageSlideshow",
            path: "ImageSlideshow",
            sources: [
                "Classes/Core/ActivityIndicator.swift",
                "Classes/Core/FullScreenSlideshowViewController.swift",
                "Classes/Core/ImageSlideshow.swift",
                "Classes/Core/ImageSlideshowItem.swift",
                "Classes/Core/InputSource.swift",
                "Classes/Core/PageIndicator.swift",
                "Classes/Core/PageIndicatorPosition.swift",
                "Classes/Core/SwiftSupport.swift",
                "Classes/Core/UIImage+AspectFit.swift",
                "Classes/Core/UIImageView+Tools.swift",
                "Classes/Core/ZoomAnimatedTransitioning.swift",
                "Assets/ic_cross_white@2x.png",
                "Assets/ic_cross_white@3x.png",
            ]),
        .target(
            name: "ImageSlideshowKingfisher",
            dependencies: ["ImageSlideshow", "Kingfisher"],
            path: "ImageSlideshow/Classes/InputSources",
            sources: ["KingfisherSource.swift"])
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
