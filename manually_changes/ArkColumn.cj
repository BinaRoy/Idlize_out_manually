package ohos.cj_components

import ohos.macro_memoize.*
import ohos.incremental_runtime.*
import ohos.peernodes.*

public interface ColumnInterfaceInterfaces {
}
public open class ColumnInterface <: ColumnInterfaceInterfaces {
    init() {
    }
}
public interface ColumnAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ColumnAttribute <: ColumnAttributeInterfaces {
    init() {
    }
}
public open class LayoutSafeAreaType {
    public static var SYSTEM: LayoutSafeAreaType = LayoutSafeAreaType(0)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutSafeAreaEdge {
    public static var TOP: LayoutSafeAreaEdge = LayoutSafeAreaEdge(0)
    public static var BOTTOM: LayoutSafeAreaEdge = LayoutSafeAreaEdge(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class TitleHeight {
    public static var MAIN_ONLY: TitleHeight = TitleHeight(0)
    public static var MAIN_WITH_SUB: TitleHeight = TitleHeight(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class ArkColumnComponent <: ArkCommonMethodComponent & ColumnAttributeInterfaces {
    public open func getPeer(): ArkColumnPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkColumnPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setColumnOptions(): Unit {
        if (this.checkPriority("setColumnOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setColumnOptionsAttribute()
            return
        }
        return
    }
    public open func alignItems(value: HorizontalAlign): Unit {
        if (this.checkPriority("alignItems")) {
            let value_casted: HorizontalAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignItemsAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class ColumnAttributeStyleHolder {
    var value: ?((attributes: ColumnAttributeInterfaces) -> Unit)
    init (value: ?((attributes: ColumnAttributeInterfaces) -> Unit)) {
        this.value = value
    }
}

class ColumnAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func ArkColumn(
    style: ?((attributes: ColumnAttributeInterfaces) -> Unit),
    content_: ?(() -> Unit)
): Unit {
    let styleHolder = ColumnAttributeStyleHolder(style)
    let contentHolder = ColumnAttributeContentHolder(content_)
    let receiver = remember({ => ArkColumnComponent() })
    NodeAttach<ArkColumnPeer>({ => 
        ArkColumnPeer.create(receiver, 0) 
    }) {
        receiver.setColumnOptions()
        if (let Some(style) <- styleHolder.value) {
            style(receiver)
        }
        if (let Some(content_) <- contentHolder.value) {
            content_()
        }
    }
}