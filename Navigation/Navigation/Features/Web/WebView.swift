


import SwiftUI

struct WebView: View {
    let url: URL

    var body: some View {
        Text("Opened url: \(url.absoluteString)")
    }
}
