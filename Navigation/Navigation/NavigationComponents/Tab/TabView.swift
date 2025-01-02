


import SwiftUI

struct TabView: View {
    @Bindable var store: TabStore
    
    var body: some View {
        SwiftUI.TabView(selection: $store.selection, content: {
            ForEach(store.tabs) { tabUnit in
                tabUnit.content
                    .tabItem {
                        Label(tabUnit.title, systemImage: tabUnit.icon)
                    }
                    .tag(tabUnit.id)
            }
        })
    }
}
