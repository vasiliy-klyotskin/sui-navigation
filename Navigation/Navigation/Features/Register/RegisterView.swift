


import SwiftUI

struct RegisterView: View {
    let onSubmit: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Enter your email")
                .font(.headline)
                .foregroundColor(.gray)

            TextField("", text: .constant("john@gmail.com"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            Text("Enter your password")
                .font(.headline)
                .foregroundColor(.gray)
            TextField("", text: .constant("54321"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            Text("Repeat your password")
                .font(.headline)
                .foregroundColor(.gray)
            TextField("", text: .constant("54321"))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue, lineWidth: 1)
                )
                .padding(.horizontal)
            Button(action: onSubmit) {
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
    RegisterView(onSubmit: {})
}
