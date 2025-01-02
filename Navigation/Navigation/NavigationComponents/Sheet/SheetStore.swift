


import Observation
import SwiftUI

@Observable
final class SheetStore {
    @ObservationIgnored var view: AnyView?
    
    private var isPresented: Bool = false
    
    func getPresented() -> Bool {
        isPresented
    }
    
    func setPresented(_ newValue: Bool) {
        if !newValue {
            self.view = nil
        }
        isPresented = newValue
    }
    
    func show<T: View>(_ view: T) {
        self.view = AnyView(view)
        isPresented = true
    }
    
    func hide() {
        self.view = nil
        isPresented = false
    }
}
