
import Foundation

enum WebComposer {
    static func compose(url: URL) -> WebView {
        WebView(url: url)
    }
}
