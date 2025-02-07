
import SwiftUI

struct SettingsView: View {
    let onAppearanceTap: () -> Void
    let onNotificationsTap: () -> Void
    let onOurWebsiteTap: () -> Void
    
    var body: some View {
        VStack(spacing: 25) {
            Button(action: onAppearanceTap) {
                Text("Appearance Settings")
            }
            Button(action: onNotificationsTap) {
                Text("Notifications Settings")
            }
            Button(action: onOurWebsiteTap) {
                Text("Visit our website")
            }
        }.font(.headline)
    }
}

#Preview {
    SettingsView(onAppearanceTap: {}, onNotificationsTap: {}, onOurWebsiteTap: {})
}
