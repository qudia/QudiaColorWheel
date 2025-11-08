import WatchKit

internal enum Asset {
    static let colorWheel = ImageAsset(name: "color_wheel")
}

internal struct ImageAsset {
    let name: String
    var image: UIImage { .init(named: name,
                               in: .module,
                               with: nil) ?? .init() }
}
