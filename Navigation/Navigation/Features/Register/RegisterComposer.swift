


enum RegisterComposer {
    static func compose(onSuccessfullRegistration: @escaping () -> Void) -> RegisterView {
        RegisterView(onSubmit: onSuccessfullRegistration)
    }
}
