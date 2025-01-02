


import SwiftUI

struct ExploreView: View {
    let onLeftButtonTap: () -> Void
    let onRightButtonTap: () -> Void
    
    var body: some View {
        VStack {
            Text("Explore item: \(UUID().uuidString.dropLast(30))")
            HStack(spacing: 32) {
                Button(action: onLeftButtonTap) {
                    Text("➡️")
                        .padding()
                        .padding()
                        .background { Color.blue.opacity(0.5) }
                }
                Button(action: onRightButtonTap) {
                    Text("⬆️")
                    .padding()
                    .padding()
                    .background { Color.red.opacity(0.5) }
                }
            }.padding()
        }
    }
}

#Preview {
    ExploreView(onLeftButtonTap: {}, onRightButtonTap: {})
}
