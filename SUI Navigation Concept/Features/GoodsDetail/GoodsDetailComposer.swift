
import Foundation

enum GoodsDetailComposer {
    static func compose(
        goodsId: String,
        onNeedToPay: @escaping (_ id: String) -> Void,
        onNeedToOpenUrl: @escaping (URL) -> Void
    ) -> GoodsDetailView {
        GoodsDetailView(
            onPayButtonTap: {
                onNeedToPay(goodsId)
            },
            onMoreInfoTap: {
                let url = URL(string: "www.random.com")!
                onNeedToOpenUrl(url)
            },
            id: goodsId
        )
    }
}
