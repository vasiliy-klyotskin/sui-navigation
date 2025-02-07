
import SwiftUI

struct GoodsDetailView: View {
    let onPayButtonTap: () -> Void
    let onMoreInfoTap: () -> Void
    let id: String
    
    var body: some View {
        
        VStack(spacing: 30) {
            Text(id)
            Button(action: onPayButtonTap) {
                Text("Buy item")
            }
            Button(action: onMoreInfoTap) {
                Text("More info")
            }
        }.font(.headline)
    }
}

#Preview {
    GoodsDetailView(onPayButtonTap: {}, onMoreInfoTap: {}, id: "Item 123")
}
