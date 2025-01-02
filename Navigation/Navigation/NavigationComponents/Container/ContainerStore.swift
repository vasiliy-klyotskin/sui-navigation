


import Observation
import SwiftUI

@Observable
final class ContainerStore {
    var view: AnyView?
    
    func set<T: View>(_ view: T) {
        self.view = AnyView(view)
    }
}
