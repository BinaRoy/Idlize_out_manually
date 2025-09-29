package ohos.cj_components

import ohos.macro_memoize.*
import ohos.incremental_runtime.*
import ohos.peernodes.*

import std.time.DateTime
internal import ohos.base.*

public open class ArkCommonMethodComponent <: ComponentBase & CommonMethodInterfaces {
    public open func getPeer(): ArkCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func stateStyles(value: StateStyles): Unit {
        if (this.checkPriority("stateStyles")) {
            hookStateStyleImpl(this, value);
        }
        return
    }
    public open func backdropBlur(radius: Option<Float64>, options: Option<BlurOptions>): Unit {
        if (this.checkPriority("backdropBlur")) {
            let radius_casted: Option<Float64> = if (let Some(radius) <- radius) {radius} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BlurOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackdropBlurAttribute(radius_casted, options_casted)
            return
        }
        return
    }
    public open func width(widthValue: Option<Union_Length_LayoutPolicy>): Unit {
        if (this.checkPriority("width")) {
            let widthValue_casted: Option<Union_Length_LayoutPolicy> = if (let Some(widthValue) <- widthValue) {widthValue} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setWidthAttribute(widthValue_casted)
            return
        }
        return
    }
    public open func height(heightValue: Option<Union_Length_LayoutPolicy>): Unit {
        if (this.checkPriority("height")) {
            let heightValue_casted: Option<Union_Length_LayoutPolicy> = if (let Some(heightValue) <- heightValue) {heightValue} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHeightAttribute(heightValue_casted)
            return
        }
        return
    }
    public open func key(value: String): Unit {
        if (this.checkPriority("key")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setKeyAttribute(value_casted)
            return
        }
        return
    }
    public open func restoreId(value: Float64): Unit {
        if (this.checkPriority("restoreId")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRestoreIdAttribute(value_casted)
            return
        }
        return
    }
    public open func padding(value: Union_Padding_Dimension): Unit {
        if (this.checkPriority("padding")) {
            let value_casted: Union_Padding_Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setPaddingAttribute(value_casted)
            return
        }
        return
    }
    public open func background(builder: CustomBuilder, options: Option<Literal_Alignment_align>): Unit {
        if (this.checkPriority("background")) {
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<Literal_Alignment_align> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundAttribute(builder_casted, options_casted)
            return
        }
        return
    }
    public open func bindSheet(isShow: Option<Bool>, builder: CustomBuilder, options: Option<SheetOptions>): Unit {
        if (this.checkPriority("bindSheet")) {
            let isShow_casted: Option<Bool> = if (let Some(isShow) <- isShow) {isShow} else { throw Exception("Type has to be not None")}
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<SheetOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSheetAttribute(isShow_casted, builder_casted, options_casted)
            return
        }
        return
    }
    public open func backgroundBlurStyle(style: Option<BlurStyle>, options: Option<BackgroundBlurStyleOptions>): Unit {
        if (this.checkPriority("backgroundBlurStyle")) {
            let style_casted: Option<BlurStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BackgroundBlurStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundBlurStyleAttribute(style_casted, options_casted)
            return
        }
        return
    }
    public open func dragPreviewOptions(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        if (this.checkPriority("dragPreviewOptions")) {
            let value_casted: DragPreviewOptions = value
            let options_casted: Option<DragInteractionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDragPreviewOptionsAttribute(value_casted, options_casted)
            return
        }
        return
    }
    public open func linearGradient(options: Option<LinearGradientOptions>): Unit {
        if (this.checkPriority("linearGradient")) {
            let options_casted: Option<LinearGradientOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLinearGradientAttribute(options_casted)
            return
        }
        return
    }
    public open func border(value: Option<BorderOptions>): Unit {
        if (this.checkPriority("border")) {
            let value_casted: Option<BorderOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBorderAttribute(value_casted)
            return
        }
        return
    }
    public open func size(value: Option<SizeOptions>): Unit {
        if (this.checkPriority("size")) {
            let value_casted: Option<SizeOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSizeAttribute(value_casted)
            return
        }
        return
    }
    public open func transform(value: Option<Any>): Unit {
        if (this.checkPriority("transform")) {
            let value_casted: Option<Any> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTransformAttribute(value_casted)
            return
        }
        return
    }
    public open func onChildTouchTest(event: ((value: ArrayList<TouchTestInfo>) -> String)): Unit {
        if (this.checkPriority("onChildTouchTest")) {
            let event_casted: ((value: ArrayList<TouchTestInfo>) -> String) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChildTouchTestAttribute(event_casted)
            return
        }
        return
    }
    public open func gestureModifier(modifier: GestureModifier): Unit {
        if (this.checkPriority("gestureModifier")) {
            hookGestureModifier(this, modifier);
        }
        return
    }
    public open func onGestureRecognizerJudgeBegin(callback_: GestureRecognizerJudgeBeginCallback): Unit {
        if (this.checkPriority("onGestureRecognizerJudgeBegin")) {
            let callback__casted: GestureRecognizerJudgeBeginCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureRecognizerJudgeBeginAttribute(callback__casted)
            return
        }
        return
    }
    public open func onClick(event: Callback_ClickEvent_Void, distanceThreshold: Float64): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: Callback_ClickEvent_Void = event
            let distanceThreshold_casted: Float64 = distanceThreshold
            let thisPeer = this.getPeer()
            thisPeer.setOnClickAttribute(event_casted, distanceThreshold_casted)
            return
        }
        return
    }
    public open func backgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("backgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public open class ArkCommonComponent <: ArkCommonMethodComponent & CommonAttributeInterfaces {
    public open func getPeer(): ArkCommonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCommonOptions(): Unit {
        if (this.checkPriority("setCommonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setCommonOptionsAttribute()
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class CommonAttributeStyleHolder {
    var value: ?((attributes: CommonAttributeInterfaces) -> Unit)
    init (value: ?((attributes: CommonAttributeInterfaces) -> Unit)) {
        this.value = value
    }
}

class CommonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func ArkCommon(
    style: ?((attributes: CommonAttributeInterfaces) -> Unit),
    content_: ?(() -> Unit)
): Unit {
    let styleHolder = CommonAttributeStyleHolder(style)
    let contentHolder = CommonAttributeContentHolder(content_)
    let receiver = remember({ => ArkCommonComponent() })
    NodeAttach<ArkCommonPeer>({ => 
        ArkCommonPeer.create(receiver, 0) 
    }) {
        receiver.setCommonOptions()
        if (let Some(style) <- styleHolder.value) {
            style(receiver)
        }
        if (let Some(content_) <- contentHolder.value) {
            content_()
        }
    }
}

public open class ArkCommonShapeMethodComponent <: ArkCommonMethodComponent & CommonShapeMethodInterfaces {
    public open func getPeer(): ArkCommonShapeMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonShapeMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func stroke(value: ResourceColor): Unit {
        if (this.checkPriority("stroke")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public open class ArkScrollableCommonMethodComponent <: ArkCommonMethodComponent & ScrollableCommonMethodInterfaces {
    public open func getPeer(): ArkScrollableCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkScrollableCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func scrollBarWidth(value: Union_Number_String): Unit {
        if (this.checkPriority("scrollBarWidth")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarWidthAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public func toIncludeDouble(value: Option<Float64>): Unit {
    GlobalScope.toIncludeDouble(value);
}
