
import SwiftUI

struct OTPView: View {
    let onEnterOtp: (String) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Enter OTP")
                .font(.headline)
                .foregroundColor(.gray)

            TextField("", text: .constant("4323"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            
            Button(action: { onEnterOtp("4323") }) {
                Text("Submit")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OTPView(onEnterOtp: { _ in })
}
