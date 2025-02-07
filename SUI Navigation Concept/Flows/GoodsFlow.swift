
import SwiftUI
import Foundation

final class GoodsFlow {
    private weak var stack: StackStore?
    private weak var sheet: SheetStore?
    
    func getView() -> some View {
        let stack = StackStore()
        let sheet = SheetStore()
        self.stack = stack
        self.sheet = sheet
        return StackView(store: stack)
            .sheet(store: sheet)
            .onAppear(perform: showGoodsList)
    }
    
    private func showGoodsList() {
        let goodsList = GoodsListComposer.compose(onSelectGoods: showGoodsDetails)
        stack?.set(root: goodsList)
    }
    
    private func showGoodsDetails(id: String) {
        let goodsDetails = GoodsDetailComposer.compose(
            goodsId: id,
            onNeedToPay: showPayment,
            onNeedToOpenUrl: showWeb
        )
        stack?.push(goodsDetails, title: "\(id)")
    }
    
    private func showPayment(goodsId: String) {
        let payment = PaymentComposer.compose(id: goodsId, onSuccessfulPayment: showPaymentSuccess)
        stack?.push(payment, title: "Payment for \(goodsId)")
    }
    
    private func showPaymentSuccess() {
        let paymentSuccess = PaymentSuccessComposer.compose(onReturn: popToRoot)
        stack?.push(paymentSuccess, title: "Success!")
    }
    
    private func showWeb(url: URL) {
        let web = WebComposer.compose(url: url)
        sheet?.show(web)
    }
    
    private func popToRoot() {
        stack?.popToRoot()
    }
}
