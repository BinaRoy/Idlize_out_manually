package ohos.cj_components

import ohos.macro_memoize.*
import ohos.incremental_runtime.*
import ohos.peernodes.*

public open class ArkSymbolGlyphComponent <: ArkCommonMethodComponent & SymbolGlyphAttributeInterfaces {
    public open func getPeer(): ArkSymbolGlyphPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSymbolGlyphPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSymbolGlyphOptions(value: Option<Resource>): Unit {
        if (this.checkPriority("setSymbolGlyphOptions")) {
            let value_casted: Option<Resource> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSymbolGlyphOptionsAttribute(value_casted)
            return
        }
        return
    }
    public open func fontSize(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class SymbolGlyphAttributeStyleHolder {
    var value: ?((attributes: SymbolGlyphAttributeInterfaces) -> Unit)
    init (value: ?((attributes: SymbolGlyphAttributeInterfaces) -> Unit)) {
        this.value = value
    }
}

class SymbolGlyphAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func ArkSymbolGlyph(
    style: ?((attributes: SymbolGlyphAttributeInterfaces) -> Unit),
    content_: ?(() -> Unit)    ,
value: Option<Resource>
): Unit {
    let styleHolder = SymbolGlyphAttributeStyleHolder(style)
    let contentHolder = SymbolGlyphAttributeContentHolder(content_)
    let receiver = remember({ => ArkSymbolGlyphComponent() })
    NodeAttach<ArkSymbolGlyphPeer>({ => 
        ArkSymbolGlyphPeer.create(receiver, 0) 
    }) {
        receiver.setSymbolGlyphOptions(value)
        if (let Some(style) <- styleHolder.value) {
            style(receiver)
        }
        if (let Some(content_) <- contentHolder.value) {
            content_()
        }
    }
}