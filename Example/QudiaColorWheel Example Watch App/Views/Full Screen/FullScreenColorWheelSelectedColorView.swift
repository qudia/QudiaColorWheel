import SwiftUI
import QudiaColorWheel

struct FullScreenColorWheelSelectedColorView: View {
    @ObservedObject var colorWheelSettings = QudiaColorWheelSettings.shared
    @State private var isShowingColorWheel = false

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(maxHeight: .infinity)

            SelectedColorView()

            Spacer(minLength: 24)

            Button {
                isShowingColorWheel = true
            } label: {
                Text("Change Color")
            }
            .buttonStyle(CustomButtonStyle())

            Spacer()
                .frame(maxHeight: .infinity)
        }
        .navigationTitle("Full Screen")
        .sheet(isPresented: $isShowingColorWheel) {
            NavigationStack {
                QudiaColorWheel()
            }
        }
    }
}
