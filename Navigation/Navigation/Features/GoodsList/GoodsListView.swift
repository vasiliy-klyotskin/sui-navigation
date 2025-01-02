


import SwiftUI

struct GoodsListView: View {
    let onItemTap: (String) -> Void
    
    let items = Array(1...10).map { "Goods \($0)" }
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Text(item).onTapGesture {
                    onItemTap(item)
                }
            }
        }
    }
}

#Preview {
    GoodsListView(onItemTap: { _ in })
}
