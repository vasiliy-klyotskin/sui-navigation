


enum LoginComposer {
    static func compose(
        onOtpTokenReceived: @escaping (String) -> Void,
        onRegisterTapped: @escaping () -> Void
    ) -> LoginView {
        LoginView(
            onSubmit: { onOtpTokenReceived("token123") },
            onRegisterTapped: onRegisterTapped
        )
    }
}
