
import SwiftUI

struct MainFlow {
    private let root = ContainerStore()
    private let tab = TabStore()
    
    var rootView: some View {
        ContainerView(store: root).onAppear(perform: showSplash)
    }
    
    private func showSplash() {
        let splash = SplashComposer.compose(onAnimationFinished: startAuthenticationFlow)
        root.set(splash)
    }
    
    private func startAuthenticationFlow() {
        let authenticationFlow = AuthenticationFlow(onSuccessfulAuthentication: showMainTabBar)
        root.set(authenticationFlow.getView())
    }
    
    private func showMainTabBar() {
        tab.addTab(title: "Explore", icon: "arrow.triangle.branch", content: ExploreFlow().getView())
        tab.addTab(title: "Goods", icon: "cart.fill", content: GoodsFlow().getView())
        tab.addTab(title: "Settings", icon: "gearshape.fill", content: SettingsFlow().getView())
        tab.select(index: 1)
        root.set(TabView(store: tab))
    }
}
