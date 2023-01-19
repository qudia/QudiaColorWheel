import SwiftUI
import QudiaColorWheel

struct ContentView: View {
    @ObservedObject var colorWheelSettings = QudiaColorWheelSettings.shared

    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            Image(Asset.appIconRounded.name)

            Spacer(minLength: 4)

            Text("QudiaColorWheel")
                .bold()

            Spacer(minLength: 8)

            NavigationLink("SwiftUI", destination: EmbeddedColorWheelView())
                .buttonStyle(CustomButtonStyle())

            Spacer(minLength: 4)

            NavigationLink("Storyboard", destination: FullScreenColorWheelSelectedColorView())
                .buttonStyle(CustomButtonStyle())

            Spacer()
        }
    }
}
