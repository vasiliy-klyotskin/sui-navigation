


import SwiftUI

struct StackView: View {
    @Bindable var store: StackStore
    
    var body: some View {
        NavigationStack(path: $store.stack) {
            store.root?.view.navigationDestination(for: StackUnit.self) {
                if let title = $0.title {
                    $0.view.navigationTitle(title)
                } else {
                    $0.view
                }
            }
        }
    }
}
