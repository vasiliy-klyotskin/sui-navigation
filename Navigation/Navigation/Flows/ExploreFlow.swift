


import SwiftUI

final class ExploreFlow {
    private weak var stack: StackStore?
    private weak var sheet: SheetStore?
    
    func getView() -> some View {
        let stack = StackStore()
        let sheet = SheetStore()
        self.stack = stack
        self.sheet = sheet
        return StackView(store: stack)
            .sheet(store: sheet)
            .onAppear(perform: setExploreItemAsRoot)
    }
    
    private func setExploreItemAsRoot() {
        let explore = ExploreComposer.compose(
            onTapLeftButton: pushExploreItem,
            onTapRightButton: showExplorationRecursivelyInSheet
        )
        stack?.set(root: explore)
    }
    
    private func pushExploreItem() {
        let explore = ExploreComposer.compose(
            onTapLeftButton: pushExploreItem,
            onTapRightButton: showExplorationRecursivelyInSheet
        )
        stack?.push(explore, title: "Explore")
    }
    
    private func showExplorationRecursivelyInSheet() {
        sheet?.show(ExploreFlow().getView())
    }
}
