package ohos.peernodes

import ohos.macro_memoize.*
import ohos.peernodes.*

import std.time.DateTime
internal import ohos.base.*

public open class ArkSelectPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSelectPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Select_construct(peerId, flags)
        let _peer = ArkSelectPeer(_peerPtr, peerId, "Select", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSelectOptionsAttribute(options: ArrayList<SelectOption>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(options.size));
        for (optionsCounterI in 0..options.size) {
            let optionsTmpElement: SelectOption = options[Int64(optionsCounterI)]
            SelectOption_serializer.write(thisSerializer, optionsTmpElement);
        }
        ArkUIGeneratedNativeModule._SelectInterface_setSelectOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_selectedAttribute(callback_: ((selected: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._SelectAttribute_set_onChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_valueAttribute(callback_: ((selected: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._SelectAttribute_set_onChangeEvent_value(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface SelectOptionInterfaces {
    public mut open prop value: ResourceStr
    public mut open prop icon: Option<ResourceStr>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
}
public open class SelectOption <: SelectOptionInterfaces {
    private var value_container: ResourceStr
    public mut open prop value: ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var icon_container: Option<ResourceStr>
    public mut open prop icon: Option<ResourceStr>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var symbolIcon_container: Option<SymbolGlyphModifier>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    {
        get() {
            return symbolIcon_container
        }
        set(symbolIcon) {
            symbolIcon_container = symbolIcon
        }
    }
    init(value: ResourceStr, icon: Option<ResourceStr>, symbolIcon: Option<SymbolGlyphModifier>) {
        this.value_container = value
        this.icon_container = icon
        this.symbolIcon_container = symbolIcon
    }
}
public interface MenuItemConfigurationInterfaces <: CommonConfiguration_MenuItemConfigurationInterfaces {
    public mut open prop value: ResourceStr
    public mut open prop icon: Option<ResourceStr>
}
public open class MenuItemConfiguration <: MenuItemConfigurationInterfaces {
    private var value_container: ResourceStr
    public mut open prop value: ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var icon_container: Option<ResourceStr>
    public mut open prop icon: Option<ResourceStr>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var enabled_container: Bool
    public mut open prop enabled: Bool
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var contentModifier_container: ContentModifier<MenuItemConfiguration>
    public mut open prop contentModifier: ContentModifier<MenuItemConfiguration>
    {
        get() {
            return contentModifier_container
        }
        set(contentModifier) {
            contentModifier_container = contentModifier
        }
    }
    init(value: ResourceStr, icon: Option<ResourceStr>, enabled: Bool, contentModifier: ContentModifier<MenuItemConfiguration>) {
        this.value_container = value
        this.icon_container = icon
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public interface SelectInterfaceInterfaces {
}
public open class SelectInterface <: SelectInterfaceInterfaces {
    init() {
    }
}
public interface SelectAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SelectAttribute <: SelectAttributeInterfaces {
    init() {
    }
}


public open class SelectOption_serializer {
    public static func write(buffer: SerializerBase, value: SelectOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        if (valueHolderForValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForValueForIdx0 = valueHolderForValue.getValue0()
            valueSerializer.writeString(valueHolderForValueForIdx0);
        } else if (valueHolderForValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForValueForIdx1 = valueHolderForValue.getValue1()
            global_resource_Resource_serializer.write(valueSerializer, valueHolderForValueForIdx1);
        }
        let valueHolderForIcon = value.icon
        if (let Some(valueHolderForIcon) <- valueHolderForIcon) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            if (valueHolderForIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIconTmpValueForIdx0 = valueHolderForIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForIconTmpValueForIdx0);
            } else if (valueHolderForIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIconTmpValueForIdx1 = valueHolderForIconTmpValue.getValue1()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSymbolIcon = value.symbolIcon
        if (let Some(valueHolderForSymbolIcon) <- valueHolderForSymbolIcon) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSymbolIconTmpValue = valueHolderForSymbolIcon
            SymbolGlyphModifier_serializer.write(valueSerializer, valueHolderForSymbolIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SelectOption {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: Union_String_Resource 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            valueTmpBuf = Union_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: ResourceStr = match (valueTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            let iconTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var iconTmpBufOpt: Union_String_Resource 
            if (iconTmpBufOptUnionSelector == Int8(0)) {
                iconTmpBufOpt = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (iconTmpBufOptUnionSelector == Int8(1)) {
                iconTmpBufOpt = Union_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for iconTmpBufOpt has to be chosen through deserialisation.")
            }
            iconTmpBuf = match (iconTmpBufOpt as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<ResourceStr> = iconTmpBuf
        let symbolIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolIconTmpBuf_runtimeType))) {
            symbolIconTmpBuf = match (SymbolGlyphModifier_serializer.read(valueDeserializer) as SymbolGlyphModifier) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let symbolIconTmpResult: Option<SymbolGlyphModifier> = symbolIconTmpBuf
        var value: SelectOption = SelectOption(valueTmpResult, iconTmpResult, symbolIconTmpResult)
        return value
    }
}
