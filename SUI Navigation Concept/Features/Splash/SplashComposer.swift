
enum SplashComposer {
    static func compose(onAnimationFinished: @escaping () -> Void) -> SplashView {
        SplashView(onAnimationFinish: onAnimationFinished)
    }
}
