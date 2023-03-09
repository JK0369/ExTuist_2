// Project.stencil

import ProjectDescription

let project = Project(
    name: "MyApp",
    targets: [
        Target(
            name: "MyApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.jake.MyApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [:]
                ]
            ),
            sources: [
                "Sources/"
            ]
        ),
        Target(
            name: "MyAppTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.jake.MyAppTests",
            infoPlist: .default,
            sources: [
                "Tests/"
            ],
            dependencies: [
                .target(name: "MyApp")
            ]
        )
    ]
)