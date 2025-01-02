


import SwiftUI

struct PaymentView: View {
    let id: String
    let onPayButtonTap: () -> Void
    
    var body: some View {
        Button(action: onPayButtonTap) {
            Text("Pay for \(id)")
        }.font(.headline)
    }
}

#Preview {
    PaymentView(id: "Item 10", onPayButtonTap: {})
}
