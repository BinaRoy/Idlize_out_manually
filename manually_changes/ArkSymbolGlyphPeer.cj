package ohos.peernodes

import std.time.DateTime
internal import ohos.base.*

public open class SymbolGlyphModifierInternal {
    public static func fromPtr(ptr: UInt64): SymbolGlyphModifier {
        return SymbolGlyphModifier(MaterializedBaseTag.NOP, ptr)
    }
}
public open class SymbolGlyphModifier <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SymbolGlyphModifier.getFinalizer())
    }
    init(src: Option<Resource>) {
        this(MaterializedBaseTag.NOP, SymbolGlyphModifier.construct(src))
    }
    static func construct(src: Option<Resource>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(src) <- src) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let srcTmpValue = src
            global_resource_Resource_serializer.write(thisSerializer, srcTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._SymbolGlyphModifier_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SymbolGlyphModifier_getFinalizer()
    }
}
public open class ArkSymbolGlyphPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSymbolGlyphPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._SymbolGlyph_construct(peerId, flags)
        let _peer = ArkSymbolGlyphPeer(_peerPtr, peerId, "SymbolGlyph", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSymbolGlyphOptionsAttribute(value: Option<Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            global_resource_Resource_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphInterface_setSymbolGlyphOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            global_resource_Resource_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface SymbolGlyphInterfaceInterfaces {
}
public open class SymbolGlyphInterface <: SymbolGlyphInterfaceInterfaces {
    init() {
    }
}
public interface SymbolGlyphAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SymbolGlyphAttribute <: SymbolGlyphAttributeInterfaces {
    init() {
    }
}

public open class SymbolGlyphModifier_serializer {
    public static func write(buffer: SerializerBase, value: SymbolGlyphModifier): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SymbolGlyphModifier {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SymbolGlyphModifierInternal.fromPtr(ptr)
    }
}
