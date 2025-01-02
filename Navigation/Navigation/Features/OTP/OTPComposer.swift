


enum OTPComposer {
    static func compose(
        otpToken: String,
        onSuccessfullConfirmation: @escaping () -> Void
    ) -> OTPView {
        OTPView(onEnterOtp: { _ in onSuccessfullConfirmation() })
    }
}
