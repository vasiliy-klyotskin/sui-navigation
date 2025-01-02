


import SwiftUI
import Observation

@Observable
final class StackStore {
    var stack: [StackUnit] = []
    var root: StackUnit?
    
    func push<T: View>(_ view: T, title: String? = nil) {
        let unit = StackUnit(view: view, title: title)
        self.stack.append(unit)
    }
    
    func set<T: View>(root view: T) {
        let unit = StackUnit(view: view, title: nil)
        self.root = unit
    }
    
    func back() {
        self.stack.removeLast()
    }
    
    func popToRoot() {
        self.stack = []
    }
}

struct StackUnit: Identifiable, Hashable {
    let id = UUID()
    let view: AnyView
    let title: String?
    
    init<T: View>(view: T, title: String?) {
        self.view = AnyView(view)
        self.title = title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: StackUnit, rhs: StackUnit) -> Bool {
        lhs.id == rhs.id
    }
}
