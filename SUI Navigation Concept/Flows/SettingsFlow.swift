
import SwiftUI
import Foundation

final class SettingsFlow {
    private weak var stack: StackStore?
    private weak var sheet: SheetStore?
    
    func getView() -> some View {
        let stack = StackStore()
        let sheet = SheetStore()
        self.stack = stack
        self.sheet = sheet
        return StackView(store: stack)
            .sheet(store: sheet)
            .onAppear(perform: showSettings)
    }
    
    private func showSettings() {
        let settings = SettingsComposer.compose(
            onNeedOpenAppearanceSettings: showAppearanceSettings,
            onNeedOpenNotificationsSettings: showNotificationSettings,
            onNeedOpenUrl: showWeb
        )
        stack?.set(root: settings)
    }
    
    private func showNotificationSettings() {
        let notifications = NotificationsComposer.compose()
        stack?.push(notifications, title: "Notifications")
    }
    
    private func showAppearanceSettings() {
        let appearance = AppearanceComposer.compose()
        stack?.push(appearance, title: "Appearance")
    }
    
    private func showWeb(url: URL) {
        let web = WebComposer.compose(url: url)
        sheet?.show(web)
    }
}
