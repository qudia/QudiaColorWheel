import SwiftUI
import QudiaColorWheel

struct FullScreenColorWheelSelectedColorView: View {
    @ObservedObject var colorWheelSettings = QudiaColorWheelSettings.shared

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(maxHeight: .infinity)

            SelectedColorView()

            Spacer(minLength: 24)
            
            Button {
                WKExtension.shared().rootInterfaceController?.presentController(
                    withName: VcConstants.colorWheel,
                    context: nil
                )
            } label: {
                Text("Change Color")
            }
            .buttonStyle(CustomButtonStyle())

            Spacer()
                .frame(maxHeight: .infinity)
        }
        .navigationBarTitle("Storyboard")
    }
}
