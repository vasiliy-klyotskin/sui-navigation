


enum PaymentComposer {
    static func compose(
        id: String,
        onSuccessfulPayment: @escaping () -> Void
    ) -> PaymentView {
        PaymentView(id: id, onPayButtonTap: onSuccessfulPayment)
    }
}
