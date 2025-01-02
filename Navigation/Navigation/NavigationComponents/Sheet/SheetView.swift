


import SwiftUI

struct SheetView: ViewModifier {
    let store: SheetStore
    
    func body(content: Content) -> some View {
        content.sheet(isPresented: .init(
            get: { store.getPresented() },
            set: { store.setPresented($0) })
        ) { store.view }
    }
}

extension View {
    func sheet(store: SheetStore) -> some View {
        modifier(SheetView(store: store))
    }
}
