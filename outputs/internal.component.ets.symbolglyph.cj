/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
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
