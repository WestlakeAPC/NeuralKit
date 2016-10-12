# NeuralKit, by Westlake APC [![Slack Status](https://westlakeapc.herokuapp.com/badge.svg)](https://westlakeapc.herokuapp.com/)

NeuralKit is a project by the Westlake Accessible Programming Club.
It's a Swift 3.0 library meant as a skeleton for low-level neural
nets and other important models in deep learning. We hope everyone
can learn a bit from our project.

Example apps for macOS and Linux will be developed soon in separate
repositories, using Interface Builder and GTK+ bindings for UI
respectively. Stay tuned for more information about the project!

To import into another project, just add this to your Package.swift:

```swift
let package = Package(
  name:  "YourProject",
  dependencies: [
    .Package(url: "https://github.com/WestlakeAPC/NeuralKit",
             majorVersion: 1)
  ]
)
```
