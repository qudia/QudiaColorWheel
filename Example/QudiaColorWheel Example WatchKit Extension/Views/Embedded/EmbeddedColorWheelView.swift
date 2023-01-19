import SwiftUI
import QudiaColorWheel

struct EmbeddedColorWheelView: View {
    @ObservedObject var colorWheelSettings = QudiaColorWheelSettings.shared

    var body: some View {
        GeometryReader { metrics in
            VStack(spacing: 0) {
                Spacer(minLength: 2)

                QudiaColorWheel()
                    .frame(height: metrics.size.height - 40)

                Spacer()

                RGBComponentsView()
                
                Spacer(minLength: 2)
            }
        }
        .navigationBarTitle("SwiftUI")
        .edgesIgnoringSafeArea(.bottom)
    }
}
