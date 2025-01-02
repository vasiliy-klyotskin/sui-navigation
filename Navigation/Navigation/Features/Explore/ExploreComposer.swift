


enum ExploreComposer {
    static func compose(
        onTapLeftButton: @escaping () -> Void,
        onTapRightButton: @escaping () -> Void
    ) -> ExploreView {
        ExploreView(onLeftButtonTap: onTapLeftButton, onRightButtonTap: onTapRightButton)
    }
}
