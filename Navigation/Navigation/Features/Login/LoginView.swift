


import SwiftUI

struct LoginView: View {
    let onSubmit: () -> Void
    let onRegisterTapped: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Enter your login")
                .font(.headline)
                .foregroundColor(.gray)

            TextField("", text: .constant("Boss123"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            
            Text("Enter your password")
                .font(.headline)
                .foregroundColor(.gray)
            SecureField("", text: .constant("123123"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            
            Button(action: onSubmit) {
                Text("Submit")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            Button(action: onRegisterTapped) {
                Text("Register")
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
    LoginView(onSubmit: {}, onRegisterTapped: {})
}
