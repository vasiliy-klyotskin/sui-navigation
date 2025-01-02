


import SwiftUI

struct AppearanceView: View {
    var body: some View {
        ZStack {
            Color.cyan.padding().opacity(0.5)
            Text("Appearance Settings")
        }
    }
}

#Preview {
    AppearanceView()
}
