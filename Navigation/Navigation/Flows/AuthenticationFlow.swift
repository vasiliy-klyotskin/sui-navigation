


import SwiftUI

final class AuthenticationFlow {
    private let onSuccessfulAuthentication: () -> Void
    private weak var stack: StackStore?
    
    init(onSuccessfulAuthentication: @escaping () -> Void) {
        self.onSuccessfulAuthentication = onSuccessfulAuthentication
    }
    
    func getView() -> some View {
        let stack = StackStore()
        self.stack = stack
        return StackView(store: stack).onAppear(perform: showLogin)
    }
    
    private func showLogin() {
        let login = LoginComposer.compose(
            onOtpTokenReceived: showOtp,
            onRegisterTapped: showRegister
        )
        stack?.set(root: login)
    }
    
    private func showOtp(otpToken: String) {
        let otp = OTPComposer.compose(otpToken: otpToken, onSuccessfullConfirmation: onSuccessfulAuthentication)
        stack?.push(otp, title: "OTP")
    }
    
    private func showRegister() {
        let register = RegisterComposer.compose(onSuccessfullRegistration: onSuccessfulAuthentication)
        stack?.push(register, title: "Register")
    }
}
