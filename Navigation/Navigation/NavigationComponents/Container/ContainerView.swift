


import SwiftUI

struct ContainerView: View {
    let store: ContainerStore
    
    var body: some View {
        store.view
    }
}
