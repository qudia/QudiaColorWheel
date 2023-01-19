import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: CustomButtonStyle.Configuration) -> some View {
        configuration.label
            .buttonStyle(PlainButtonStyle())
            .padding(.init(top: 6, leading: 8, bottom: 6, trailing: 8))
            .background(Color(white: 0.15))
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .opacity(configuration.isPressed ? 0.8 : 1)
    }
}
