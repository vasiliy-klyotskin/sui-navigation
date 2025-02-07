
import Foundation

enum SettingsComposer {
    static func compose(
        onNeedOpenAppearanceSettings: @escaping () -> Void,
        onNeedOpenNotificationsSettings: @escaping () -> Void,
        onNeedOpenUrl: @escaping (URL) -> Void
    ) -> SettingsView {
        let view = SettingsView(
            onAppearanceTap: onNeedOpenAppearanceSettings,
            onNotificationsTap: onNeedOpenNotificationsSettings,
            onOurWebsiteTap: {
                let url = URL(string: "www.google.com")!
                onNeedOpenUrl(url)
            })
        return view
    }
}
