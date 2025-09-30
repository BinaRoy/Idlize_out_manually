package ohos.cj_components

import ohos.macro_memoize.*
import ohos.incremental_runtime.*
import ohos.peernodes.*

public open class ArkSelectComponent <: ArkCommonMethodComponent & SelectAttributeInterfaces {
    public open func getPeer(): ArkSelectPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSelectPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSelectOptions(options: ArrayList<SelectOption>): Unit {
        if (this.checkPriority("setSelectOptions")) {
            let options_casted: ArrayList<SelectOption> = options
            let thisPeer = this.getPeer()
            thisPeer.setSelectOptionsAttribute(options_casted)
            return
        }
        return
    }
    public open func menuItemContentModifier(modifier: ContentModifier<MenuItemConfiguration>): Unit {
        if (this.checkPriority("menuItemContentModifier")) {
            hookSelectContentModifier(this, modifier);
        }
        return
    }
    public open func _onChangeEvent_selected(callback_: ((selected: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback__casted: ((selected: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback__casted)
            return
        }
        return
    }
    public open func _onChangeEvent_value(callback_: ((selected: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_value")) {
            let callback__casted: ((selected: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_valueAttribute(callback__casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class SelectAttributeStyleHolder {
    var value: ?((attributes: SelectAttributeInterfaces) -> Unit)
    init (value: ?((attributes: SelectAttributeInterfaces) -> Unit)) {
        this.value = value
    }
}

class SelectAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func ArkSelect(
    style: ?((attributes: SelectAttributeInterfaces) -> Unit),
    content_: ?(() -> Unit)    ,
options: ArrayList<SelectOption>
): Unit {
    let styleHolder = SelectAttributeStyleHolder(style)
    let contentHolder = SelectAttributeContentHolder(content_)
    let receiver = remember({ => ArkSelectComponent() })
    NodeAttach<ArkSelectPeer>({ => 
        ArkSelectPeer.create(receiver, 0) 
    }) {
        receiver.setSelectOptions(options)
        if (let Some(style) <- styleHolder.value) {
            style(receiver)
        }
        if (let Some(content_) <- contentHolder.value) {
            content_()
        }
    }
}