package ohos.peernodes

import ohos.base.*

public open class ArkColumnPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkColumnPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Column_construct(peerId, flags)
        let _peer = ArkColumnPeer(_peerPtr, peerId, "Column", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setColumnOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._ColumnInterface_setColumnOptions(this.peer.ptr);
    }
    public open func setAlignItemsAttribute(value: HorizontalAlign): Unit {
        ArkUIGeneratedNativeModule._ColumnAttribute_setAlignItems(this.peer.ptr, value.value);
    }
}

public open class HorizontalAlign {
    public static var START: HorizontalAlign = HorizontalAlign(0)
    public static var CENTER: HorizontalAlign = HorizontalAlign(1)
    public static var END: HorizontalAlign = HorizontalAlign(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}

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