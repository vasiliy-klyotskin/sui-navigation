
enum PaymentSuccessComposer {
    static func compose(
        onReturn: @escaping () -> Void
    ) -> PaymentSuccessView {
        PaymentSuccessView(onFinishPaymentButtonTapped: onReturn)
    }
}
