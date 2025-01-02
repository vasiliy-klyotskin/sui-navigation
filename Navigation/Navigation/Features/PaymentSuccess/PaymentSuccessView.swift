


import SwiftUI

struct PaymentSuccessView: View {
    let onFinishPaymentButtonTapped: () -> Void
    
    var body: some View {
        Button(action: onFinishPaymentButtonTapped) {
            Text("Get back to the goods!")
        }.font(.headline)
    }
}
