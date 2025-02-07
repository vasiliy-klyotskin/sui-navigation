
import Observation
import SwiftUI

@Observable
final class TabStore {
    var tabs: [TabUnit] = []
    var selection: UUID?
    
    func addTab(title: String, icon: String, content: some View) {
        tabs.append(.init(icon: icon, title: title, content: AnyView(content)))
    }
    
    func select(index: Int) {
        selection = tabs[index].id
    }
}

struct TabUnit: Identifiable {
    let id: UUID = .init()
    let icon: String
    let title: String
    let content: AnyView
}
