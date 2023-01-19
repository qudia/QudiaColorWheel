import SwiftUI

public class QudiaColorWheelSettings: ObservableObject {
    public static let shared = QudiaColorWheelSettings()

    @Published var hsvColor = HSVColor(hue: 0.66, saturation: 1, brightness: 1)

    public var color: UIColor {
        get {
            hsvColor.uiColor
        }

        set {
            hsvColor = HSVColor(color: newValue) ?? .init(hue: 1, saturation: 1, brightness: 1)
        }
    }

    public var borderColor: UIColor {
        hsvColor.borderColor
    }

    public var isLightColor: Bool {
        hsvColor.isLightColor
    }
}
