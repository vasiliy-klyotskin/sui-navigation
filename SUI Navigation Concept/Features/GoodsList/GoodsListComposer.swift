
import SwiftUI

enum GoodsListComposer {
    static func compose(
        onSelectGoods: @escaping (_ id: String) -> Void
    ) -> GoodsListView {
        GoodsListView(onItemTap: onSelectGoods)
    }
}
